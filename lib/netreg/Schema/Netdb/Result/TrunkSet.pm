package netreg::Schema::Netdb::Result::TrunkSet;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::TrunkSet

=cut

__PACKAGE__->table("trunk_set");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 version

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 name

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 abbreviation

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 127

=head2 description

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 primary_vlan

  data_type: 'integer'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "version",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "name",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
  "abbreviation",
  { data_type => "char", default_value => "", is_nullable => 0, size => 127 },
  "description",
  { data_type => "char", default_value => "", is_nullable => 0, size => 255 },
  "primary_vlan",
  { data_type => "integer", default_value => 1, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RQZf6CJ5ZvOIWf7T5572hg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
