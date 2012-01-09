package netreg::Schema::Result::SyScheduled;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::SyScheduled

=cut

__PACKAGE__->table("_sys_scheduled");

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
  size: 128

=head2 previous_run

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 next_run

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 def_interval

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 blocked_until

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
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
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 128 },
  "previous_run",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "next_run",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "def_interval",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "blocked_until",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9WsxA4w27pLDF6iEX4EVug


# You can replace this text with custom content, and it will be preserved on regeneration
1;
