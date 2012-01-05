package netreg::Schema::Netdb::Result::Machine;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::Machine

=cut

__PACKAGE__->table("machine");

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

=head2 mac_address

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 12

=head2 host_name

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 ip_address

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 mode

  data_type: 'enum'
  default_value: 'static'
  extra: {list => ["static","dynamic","reserved","broadcast","pool","base","secondary"]}
  is_nullable: 0

=head2 flags

  data_type: 'set'
  extra: {list => ["abuse","suspend","stolen","no_dnsfwd","no_dnsrev"]}
  is_nullable: 0

=head2 comment_lvl9

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 account

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 host_name_ttl

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ip_address_ttl

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 host_name_zone

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ip_address_zone

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 ip_address_subnet

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 created

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 expires

  data_type: 'date'
  default_value: '0000-00-00'
  is_nullable: 0

=head2 comment_lvl1

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 comment_lvl5

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 255

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
  "mac_address",
  { data_type => "char", default_value => "", is_nullable => 0, size => 12 },
  "host_name",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
  "ip_address",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "mode",
  {
    data_type => "enum",
    default_value => "static",
    extra => {
      list => [
        "static",
        "dynamic",
        "reserved",
        "broadcast",
        "pool",
        "base",
        "secondary",
      ],
    },
    is_nullable => 0,
  },
  "flags",
  {
    data_type => "set",
    extra => {
      list => ["abuse", "suspend", "stolen", "no_dnsfwd", "no_dnsrev"],
    },
    is_nullable => 0,
  },
  "comment_lvl9",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
  "account",
  { data_type => "char", default_value => "", is_nullable => 0, size => 32 },
  "host_name_ttl",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "ip_address_ttl",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "host_name_zone",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "ip_address_zone",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  "ip_address_subnet",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "created",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "expires",
  { data_type => "date", default_value => "0000-00-00", is_nullable => 0 },
  "comment_lvl1",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
  "comment_lvl5",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jgj08QFK7sJL8mcY0a7big


# You can replace this text with custom content, and it will be preserved on regeneration
1;
