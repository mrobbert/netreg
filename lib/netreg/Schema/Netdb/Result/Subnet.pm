package netreg::Schema::Netdb::Result::Subnet;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::Subnet

=cut

__PACKAGE__->table("subnet");

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

=head2 name

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 abbreviation

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 16

=head2 base_address

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 network_mask

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 dynamic

  data_type: 'enum'
  default_value: 'permit'
  extra: {list => ["permit","restrict","disallow"]}
  is_nullable: 0

=head2 expire_static

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 expire_dynamic

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 share

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 flags

  data_type: 'set'
  extra: {list => ["no_dhcp","delegated","prereg_subnet"]}
  is_nullable: 1

=head2 default_mode

  data_type: 'enum'
  default_value: 'static'
  extra: {list => ["static","dynamic","reserved"]}
  is_nullable: 0

=head2 purge_interval

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 purge_notupd

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 purge_notseen

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 purge_explen

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 purge_lastdone

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 vlan

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 8

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
  "name",
  { data_type => "char", default_value => "", is_nullable => 0, size => 64 },
  "abbreviation",
  { data_type => "char", default_value => "", is_nullable => 0, size => 16 },
  "base_address",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "network_mask",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "dynamic",
  {
    data_type => "enum",
    default_value => "permit",
    extra => { list => ["permit", "restrict", "disallow"] },
    is_nullable => 0,
  },
  "expire_static",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "expire_dynamic",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "share",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "flags",
  {
    data_type => "set",
    extra => { list => ["no_dhcp", "delegated", "prereg_subnet"] },
    is_nullable => 1,
  },
  "default_mode",
  {
    data_type => "enum",
    default_value => "static",
    extra => { list => ["static", "dynamic", "reserved"] },
    is_nullable => 0,
  },
  "purge_interval",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "purge_notupd",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "purge_notseen",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "purge_explen",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "purge_lastdone",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "vlan",
  { data_type => "char", default_value => "", is_nullable => 0, size => 8 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_name", ["name"]);
__PACKAGE__->add_unique_constraint("index_abbreviation", ["abbreviation"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dN2wmZcnRhZk3aPgkAA5zw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
