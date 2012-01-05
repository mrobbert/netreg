package netreg::Schema::Netdb::Result::TrunksetMachinePresence;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::TrunksetMachinePresence

=cut

__PACKAGE__->table("trunkset_machine_presence");

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

=head2 device

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 trunk_set

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 last_update

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
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
  "device",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "trunk_set",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "last_update",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_nodup", ["trunk_set", "device"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UmKUIbb/pVuxBnXRaCbqPQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
