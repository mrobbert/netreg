package netreg::Schema::Result::DnsResource;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::DnsResource

=cut

__PACKAGE__->table("dns_resource");

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

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 ttl

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 type

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 8

=head2 rname

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 rmetric0

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 rmetric1

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 rport

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 text0

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 text1

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 name_zone

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 owner_type

  data_type: 'enum'
  default_value: 'machine'
  extra: {list => ["machine","dns_zone","service"]}
  is_nullable: 0

=head2 owner_tid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 rname_tid

  data_type: 'integer'
  extra: {unsigned => 1}
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
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "ttl",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "type",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 8 },
  "rname",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "rmetric0",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "rmetric1",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "rport",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "text0",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "text1",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "name_zone",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "owner_type",
  {
    data_type => "enum",
    default_value => "machine",
    extra => { list => ["machine", "dns_zone", "service"] },
    is_nullable => 0,
  },
  "owner_tid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "rname_tid",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A5ucoMd9R4YGgExnWa1ZDg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
