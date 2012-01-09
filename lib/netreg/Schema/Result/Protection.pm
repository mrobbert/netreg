package netreg::Schema::Result::Protection;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::Protection

=cut

__PACKAGE__->table("protections");

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

=head2 identity

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 tname

  data_type: 'enum'
  default_value: 'users'
  extra: {list => ["users","groups","building","cable","outlet","outlet_type","machine","network","subnet","subnet_share","subnet_presence","subnet_domain","dhcp_option_type","dhcp_option","dns_resource_type","dns_resource","dns_zone","_sys_scheduled","activation_queue","service","service_membership","service_type","attribute","attribute_spec","outlet_vlan_membership","vlan","vlan_presence","vlan_subnet_presence","trunk_set","trunkset_building_presence","trunkset_machine_presence","trunkset_vlan_presence","credentials","subnet_registration_modes","user_type"]}
  is_nullable: 0

=head2 tid

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 rights

  data_type: 'set'
  extra: {list => ["READ","WRITE","ADD"]}
  is_nullable: 0

=head2 rlevel

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
  "identity",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "tname",
  {
    data_type => "enum",
    default_value => "users",
    extra => {
      list => [
        "users",
        "groups",
        "building",
        "cable",
        "outlet",
        "outlet_type",
        "machine",
        "network",
        "subnet",
        "subnet_share",
        "subnet_presence",
        "subnet_domain",
        "dhcp_option_type",
        "dhcp_option",
        "dns_resource_type",
        "dns_resource",
        "dns_zone",
        "_sys_scheduled",
        "activation_queue",
        "service",
        "service_membership",
        "service_type",
        "attribute",
        "attribute_spec",
        "outlet_vlan_membership",
        "vlan",
        "vlan_presence",
        "vlan_subnet_presence",
        "trunk_set",
        "trunkset_building_presence",
        "trunkset_machine_presence",
        "trunkset_vlan_presence",
        "credentials",
        "subnet_registration_modes",
        "user_type",
      ],
    },
    is_nullable => 0,
  },
  "tid",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
  "rights",
  {
    data_type => "set",
    extra => { list => ["READ", "WRITE", "ADD"] },
    is_nullable => 0,
  },
  "rlevel",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_nodup", ["identity", "tname", "tid", "rlevel"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fWvAMZEizcfRHygT2/Dlug


# You can replace this text with custom content, and it will be preserved on regeneration
1;
