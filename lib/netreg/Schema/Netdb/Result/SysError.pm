package netreg::Schema::Netdb::Result::SysError;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::SysError

=cut

__PACKAGE__->table("_sys_errors");

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

=head2 errcode

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 location

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 errfields

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 errtext

  data_type: 'text'
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
  "errcode",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "location",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "errfields",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "errtext",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ptiVg1aUw+MZJjql1QjO5g


# You can replace this text with custom content, and it will be preserved on regeneration
1;
