package netreg::Schema::Result::Group;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::Group

=cut

__PACKAGE__->table("groups");

=head1 ACCESSORS

=head2 version

  data_type: 'timestamp'
  default_value: current_timestamp
  is_nullable: 0

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 flags

  data_type: 'set'
  extra: {list => ["abuse","suspend","purge_mailusers"]}
  is_nullable: 0

=head2 description

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 comment_lvl9

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 comment_lvl5

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=cut

__PACKAGE__->add_columns(
  "version",
  {
    data_type     => "timestamp",
    default_value => \"current_timestamp",
    is_nullable   => 0,
  },
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "char", default_value => "", is_nullable => 0, size => 32 },
  "flags",
  {
    data_type => "set",
    extra => { list => ["abuse", "suspend", "purge_mailusers"] },
    is_nullable => 0,
  },
  "description",
  { data_type => "char", default_value => "", is_nullable => 0, size => 64 },
  "comment_lvl9",
  { data_type => "char", default_value => "", is_nullable => 0, size => 64 },
  "comment_lvl5",
  { data_type => "char", default_value => "", is_nullable => 0, size => 64 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uGWXpcPuH98qPLnoh9YjxA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
