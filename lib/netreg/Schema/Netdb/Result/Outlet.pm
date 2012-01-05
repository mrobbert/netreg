package netreg::Schema::Netdb::Result::Outlet;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::Outlet

=cut

__PACKAGE__->table("outlet");

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

=head2 type

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 cable

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 device

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 port

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 attributes

  data_type: 'set'
  extra: {list => ["activate","deactivate","change"]}
  is_nullable: 1

=head2 flags

  data_type: 'set'
  extra: {list => ["abuse","suspend","permanent","activated"]}
  is_nullable: 0

=head2 status

  data_type: 'enum'
  default_value: 'enabled'
  extra: {list => ["enabled","partitioned"]}
  is_nullable: 0

=head2 account

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 comment_lvl9

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 255

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

=head2 expires

  data_type: 'date'
  default_value: '0000-00-00'
  is_nullable: 0

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
  "type",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "cable",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "device",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "port",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "attributes",
  {
    data_type => "set",
    extra => { list => ["activate", "deactivate", "change"] },
    is_nullable => 1,
  },
  "flags",
  {
    data_type => "set",
    extra => { list => ["abuse", "suspend", "permanent", "activated"] },
    is_nullable => 0,
  },
  "status",
  {
    data_type => "enum",
    default_value => "enabled",
    extra => { list => ["enabled", "partitioned"] },
    is_nullable => 0,
  },
  "account",
  { data_type => "char", default_value => "", is_nullable => 0, size => 32 },
  "comment_lvl9",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
  "comment_lvl1",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
  "comment_lvl5",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
  "expires",
  { data_type => "date", default_value => "0000-00-00", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_cable", ["cable"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zMFmlP9l8Kk3KEQ0T2xpNA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
