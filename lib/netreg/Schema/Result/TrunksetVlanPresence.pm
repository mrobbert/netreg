package netreg::Schema::Result::TrunksetVlanPresence;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::TrunksetVlanPresence

=cut

__PACKAGE__->table("trunkset_vlan_presence");

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

=head2 trunk_set

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 vlan

  data_type: 'integer'
  default_value: 0
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
  "trunk_set",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "vlan",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_nodup", ["trunk_set", "vlan"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:b4373D3nEtxuM1i5eZrlgg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
