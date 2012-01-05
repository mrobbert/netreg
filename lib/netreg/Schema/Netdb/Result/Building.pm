package netreg::Schema::Netdb::Result::Building;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::Building

=cut

__PACKAGE__->table("building");

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

=head2 building

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 8

=head2 activation_queue

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
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
  { data_type => "char", default_value => "", is_nullable => 0, size => 64 },
  "abbreviation",
  { data_type => "char", default_value => "", is_nullable => 0, size => 16 },
  "building",
  { data_type => "char", default_value => "", is_nullable => 0, size => 8 },
  "activation_queue",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_name", ["name"]);
__PACKAGE__->add_unique_constraint("index_number", ["building"]);
__PACKAGE__->add_unique_constraint("index_abbreviation", ["abbreviation"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5ayHZ53vEBKKbdheL0WVIw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
