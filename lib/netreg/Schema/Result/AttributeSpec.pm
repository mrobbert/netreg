package netreg::Schema::Result::AttributeSpec;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::AttributeSpec

=cut

__PACKAGE__->table("attribute_spec");

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

=head2 format

  data_type: 'text'
  is_nullable: 0

=head2 scope

  data_type: 'enum'
  default_value: 'service_membership'
  extra: {list => ["service_membership","service","users","groups","outlet","vlan","subnet","machine"]}
  is_nullable: 0

=head2 type

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ntimes

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 description

  data_type: 'varchar'
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
  "name",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "format",
  { data_type => "text", is_nullable => 0 },
  "scope",
  {
    data_type => "enum",
    default_value => "service_membership",
    extra => {
      list => [
        "service_membership",
        "service",
        "users",
        "groups",
        "outlet",
        "vlan",
        "subnet",
        "machine",
      ],
    },
    is_nullable => 0,
  },
  "type",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "ntimes",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "description",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_name", ["name", "type", "scope"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0XV7bCR52GJBCNXzwoNPMQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
