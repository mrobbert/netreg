#!/usr/bin/perl
#
# cs-report.pl
#
# This script exports all hosts in CS maintained domains.
# It also provides information for generating "forward" records and
# information on user contact so that CS can contact users about inapropriate
# regestrations.
#
#
# The output format for this report is a pipe ("|") seperated record 
# consisting of the following...
# Host_name|IP_address|MAC_address|Date_created|Date_last_modified|User|Affiliation
#
# Copyright (c) 2000-2002 Carnegie Mellon University. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# 3. The name "Carnegie Mellon University" must not be used to endorse or
#    promote products derived from this software without prior written
#    permission. For permission or any legal details, please contact:
#      Office of Technology Transfer
#      Carnegie Mellon University
#      5000 Forbes Avenue
#      Pittsburgh, PA 15213-3890
#      (412) 268-4387, fax: (412) 268-7395
#      tech-transfer@andrew.cmu.edu
#
# 4. Redistributions of any form whatsoever must retain the following
#    acknowledgment: "This product includes software developed by Computing
#    Services at Carnegie Mellon University (http://www.cmu.edu/computing/)."
#
# CARNEGIE MELLON UNIVERSITY DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS
# SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS,
# IN NO EVENT SHALL CARNEGIE MELLON UNIVERSITY BE LIABLE FOR ANY SPECIAL,
# INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
# OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# $Id: cs-report.pl,v 1.7 2008/03/27 19:42:41 vitroth Exp $
#
# $Log: cs-report.pl,v $
# Revision 1.7  2008/03/27 19:42:41  vitroth
# Merging changes from duke merge branch to head, with some minor type corrections
# and some minor feature additions (quick jump links on list pages, and better
# handling of partial range allocations in the subnet map)
#
# Revision 1.6.20.1  2007/10/11 20:59:45  vitroth
# Massive merge of all Duke changes with latest CMU changes, and
# conflict resolution therein.   Should be ready to commit to the cvs HEAD.
#
# Revision 1.6.18.1  2007/09/20 18:43:07  kevinm
# Committing all local changes to CVS repository
#
# Revision 1.6  2004/02/20 03:17:52  kevinm
# * External config file updates
#
# Revision 1.5  2002/01/30 20:35:22  kevinm
# Fixed vars_l
#
#
#

use strict;
use Fcntl ':flock';

BEGIN {
  my @LPath = split(/\//, __FILE__);
  push(@INC, join('/', @LPath[0..$#LPath-1]));
}
use vars_l;
use lib $vars_l::NRLIB;
use CMU::Netdb;
use CMU::Netdb::config;

my ($vres, $NRHOME) = CMU::Netdb::config::get_multi_conf_var('netdb',
							     'NRHOME');

my ($user, $dbh, $cs_list);
my ($i);
my ($id, $mac_address, $host_name, $ip_address, $mode, $flags);
my ($comment, $account, $host_name_ttl);
my ($ip_address_ttl, $host_name_zone, $ip_address_zone);
my ($ip_address_subnet, $mversion, $created, $expires);
my ($host_num, $prots, $prot_num, @user_list, @group_list);
my ($outfile) = $NRHOME.'/etc/misc-reports/cs_registered.csv';

$CMU::Netdb::auth::debug = 0;

open(OUTFILE, "> $outfile") || die ("Could not open $outfile for write \n");

print OUTFILE "#Host_name|IP_address|MAC_address|Date_created|Date_last_modified|User|Affiliation\n";

$user = "netreg";

$dbh = CMU::Netdb::helper::report_db_connect();

$cs_list = CMU::Netdb::machines_subnets::list_machines($dbh, $user, "( machine.host_name like \"%.CS.CMU.EDU\" ) order by machine.version");

die "error $cs_list ( $CMU::Netdb::errors::errmeanings{$cs_list} ) while attempting to get cs host list\n" if not ref $cs_list;

$i = 0;
foreach (@{$cs_list->[0]}){
  $id = $i if ($_ eq 'machine.id');
  $mac_address = $i if ($_ eq 'machine.mac_address');
  $host_name = $i if ($_ eq 'machine.host_name');
  $ip_address = $i if ($_ eq 'machine.ip_address');
  $mode = $i if ($_ eq 'machine.mode');
  $flags = $i if ($_ eq 'machine.flags');
  $comment = $i if ($_ eq 'machine.comment');
  $account = $i if ($_ eq 'machine.account');
  $host_name_ttl = $i if ($_ eq 'machine.host_name_ttl');
  $ip_address_ttl = $i if ($_ eq 'machine.ip_address_ttl');
  $host_name_zone = $i if ($_ eq 'machine.host_name_zone');
  $ip_address_zone = $i if ($_ eq 'machine.ip_address_zone');
  $ip_address_subnet = $i if ($_ eq 'machine.ip_address_subnet');
  $mversion = $i if ($_ eq 'machine.version');
  $created = $i if ($_ eq 'machine.created');
  $expires = $i if ($_ eq 'machine.expires');
  $i++
}


for $host_num ( 1 .. $#$cs_list ) {

#  print join( '|', @{$cs_list->[$host_num]}, "\n");
  @{$cs_list->[$host_num]}[$mversion] =~ /(....)(..)(..)(..)(..)(..)/;
  my $modDate = "$1-$2-$3 $4:$5:$6";
  print OUTFILE join ('|', @{$cs_list->[$host_num]}[$host_name],
	      CMU::Netdb::helper::long2dot(@{$cs_list->[$host_num]}[$ip_address]),
              @{$cs_list->[$host_num]}[$mac_address],
	      @{$cs_list->[$host_num]}[$created],
	      $modDate);
  $prots = CMU::Netdb::auth::list_protections($dbh, $user, 'machine', ${$cs_list->[$host_num]}[$id]);
  next if not ref $prots;
  $#user_list = -1;
  $#group_list = -1;
  for $prot_num (0 .. $#$prots){
      push (@group_list, (split ':', @{$prots->[$prot_num]}[1])[1]) if ((@{$prots->[$prot_num]}[0] eq "group") && (@{$prots->[$prot_num]}[1] =~ /dept:/));

      push @user_list, @{$prots->[$prot_num]}[1] if (@{$prots->[$prot_num]}[0] eq 'user');
  }
  print OUTFILE "|" . join(",", @user_list);
  print OUTFILE "|" . join(",", @group_list);
  print OUTFILE "\n";
}

$dbh->disconnect();

close OUTFILE;

