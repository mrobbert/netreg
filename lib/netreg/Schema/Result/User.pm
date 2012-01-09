package netreg::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::User

=cut

__PACKAGE__->table("users");

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

=head2 flags

  data_type: 'set'
  extra: {list => ["abuse","suspend"]}
  is_nullable: 0

=head2 comment

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 default_group

  data_type: 'integer'
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
  "flags",
  {
    data_type => "set",
    extra => { list => ["abuse", "suspend"] },
    is_nullable => 0,
  },
  "comment",
  { data_type => "char", default_value => "", is_nullable => 0, size => 64 },
  "default_group",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:W1E43TUdIeZs2fbStmh4sg


# You can replace this text with custom content, and it will be preserved on regeneration
1;