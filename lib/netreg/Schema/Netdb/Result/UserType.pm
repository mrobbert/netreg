package netreg::Schema::Netdb::Result::UserType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::UserType

=cut

__PACKAGE__->table("user_type");

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

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 64

=head2 expire_days_mach

  data_type: 'tinyint'
  default_value: 7
  is_nullable: 0

=head2 expire_days_outlet

  data_type: 'tinyint'
  default_value: 7
  is_nullable: 0

=head2 flags

  data_type: 'set'
  extra: {list => ["send_email_mach","send_email_outlet","disable_acct"]}
  is_nullable: 1

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
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 64 },
  "expire_days_mach",
  { data_type => "tinyint", default_value => 7, is_nullable => 0 },
  "expire_days_outlet",
  { data_type => "tinyint", default_value => 7, is_nullable => 0 },
  "flags",
  {
    data_type => "set",
    extra => {
      list => ["send_email_mach", "send_email_outlet", "disable_acct"],
    },
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ppL+w7MaRdQKyv0qS4TwHA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
