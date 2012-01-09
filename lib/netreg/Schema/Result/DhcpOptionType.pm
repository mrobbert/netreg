package netreg::Schema::Result::DhcpOptionType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::DhcpOptionType

=cut

__PACKAGE__->table("dhcp_option_type");

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
  size: 64

=head2 number

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 format

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 builtin

  data_type: 'enum'
  default_value: 'N'
  extra: {list => ["Y","N"]}
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
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "number",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "format",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "builtin",
  {
    data_type => "enum",
    default_value => "N",
    extra => { list => ["Y", "N"] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jp+xagAVTNVDE4tFKPFSDA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
