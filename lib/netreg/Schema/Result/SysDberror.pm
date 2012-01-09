package netreg::Schema::Result::SysDberror;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::SysDberror

=cut

__PACKAGE__->table("_sys_dberror");

=head1 ACCESSORS

=head2 version

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 tname

  data_type: 'enum'
  default_value: 'users'
  extra: {list => ["users","groups","building","cable","outlet","outlet_type","machine","network","subnet","subnet_share","subnet_presence","subnet_domain","dhcp_option_type","dhcp_option","dns_resource_type","dns_resource","dns_zone"]}
  is_nullable: 0

=head2 tid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 errfields

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 severity

  data_type: 'enum'
  default_value: 'ERROR'
  extra: {list => ["EMERGENCY","ALERT","CRITICAL","ERROR","WARNING","NOTICE","INFO"]}
  is_nullable: 0

=head2 errtype

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 fixed

  data_type: 'enum'
  default_value: 'UNFIXED'
  extra: {list => ["UNFIXED","FIXED"]}
  is_nullable: 0

=head2 comment

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "version",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "tname",
  {
    data_type => "enum",
    default_value => "users",
    extra => {
      list => [
        "users",
        "groups",
        "building",
        "cable",
        "outlet",
        "outlet_type",
        "machine",
        "network",
        "subnet",
        "subnet_share",
        "subnet_presence",
        "subnet_domain",
        "dhcp_option_type",
        "dhcp_option",
        "dns_resource_type",
        "dns_resource",
        "dns_zone",
      ],
    },
    is_nullable => 0,
  },
  "tid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "errfields",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "severity",
  {
    data_type => "enum",
    default_value => "ERROR",
    extra => {
      list => [
        "EMERGENCY",
        "ALERT",
        "CRITICAL",
        "ERROR",
        "WARNING",
        "NOTICE",
        "INFO",
      ],
    },
    is_nullable => 0,
  },
  "errtype",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "fixed",
  {
    data_type => "enum",
    default_value => "UNFIXED",
    extra => { list => ["UNFIXED", "FIXED"] },
    is_nullable => 0,
  },
  "comment",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xnv5Cdc58PKCnRnnzsM8fg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
