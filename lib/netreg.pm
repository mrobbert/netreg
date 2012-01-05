package netreg;
use Moose;
use namespace::autoclean;

use Catalyst::Runtime 5.80;

# Set flags and add plugins for the application
#
#         -Debug: activates the debug mode for very useful log messages
#   ConfigLoader: will load the configuration from a Config::General file in the
#                 application's home directory
# Static::Simple: will serve static files from the application's root
#                 directory

use Catalyst qw/
    -Debug
    ConfigLoader
    Static::Simple
    StackTrace
/;

extends 'Catalyst';

our $VERSION = '2.01';
$VERSION = eval $VERSION;

# Configure the application.
#
# Note that settings in netreg.conf (or other external
# configuration file that you set up manually) take precedence
# over this when using ConfigLoader. Thus configuration
# details given here can function as a default configuration,
# with an external configuration file acting as an override for
# local deployment.

__PACKAGE__->config(
    name => 'netreg',
    # Disable deprecated behavior needed by old applications
    disable_component_resolution_regex_fallback => 1,
);

# Start the application
__PACKAGE__->setup();


=head1 NAME

netreg 

=head1 SYNOPSIS

    script/netreg_server.pl

=head1 DESCRIPTION

Carnegie Mellon's NetReg provides administrators a central platform for IP Address Management and administration of related network information. NetReg keeps a database of subnet information, DNS zones, DHCP options, machine registrations, and more. It has a finely grained access control mechanism to provide administrators maximum flexibility in delegating access.

=head1 SEE ALSO

L<netreg::Controller::Root>, L<Catalyst>

=head1 AUTHOR

CMU, re-write for Catalyst by Michael Robbert

=head1 LICENSE

Copyright (c) 2000-2002 Carnegie Mellon University. All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
   this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

3. The name "Carnegie Mellon University" must not be used to endorse or
   promote products derived from this software without prior written
   permission. For permission or any legal details, please contact:
     Office of Technology Transfer
     Carnegie Mellon University
     5000 Forbes Avenue
     Pittsburgh, PA 15213-3890
     (412) 268-4387, fax: (412) 268-7395
     tech-transfer@andrew.cmu.edu

4. Redistributions of any form whatsoever must retain the following
   acknowledgment: "This product includes software developed by Computing
   Services at Carnegie Mellon University (http://www.cmu.edu/computing/)."

CARNEGIE MELLON UNIVERSITY DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS
SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS,
IN NO EVENT SHALL CARNEGIE MELLON UNIVERSITY BE LIABLE FOR ANY SPECIAL,
INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.

=cut

1;
