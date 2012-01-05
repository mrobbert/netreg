package netreg::Schema::Netdb::Result::OutletVlanMembership;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::OutletVlanMembership

=cut

__PACKAGE__->table("outlet_vlan_membership");

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

=head2 outlet

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 vlan

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 type

  data_type: 'enum'
  default_value: 'primary'
  extra: {list => ["primary","voice","other"]}
  is_nullable: 0

=head2 trunk_type

  data_type: 'enum'
  default_value: '802.1Q'
  extra: {list => ["802.1Q","ISL","none"]}
  is_nullable: 0

=head2 status

  data_type: 'enum'
  default_value: 'request'
  extra: {list => ["request","active","delete","error","errordelete","novlan"]}
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
  "outlet",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "vlan",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "type",
  {
    data_type => "enum",
    default_value => "primary",
    extra => { list => ["primary", "voice", "other"] },
    is_nullable => 0,
  },
  "trunk_type",
  {
    data_type => "enum",
    default_value => "802.1Q",
    extra => { list => ["802.1Q", "ISL", "none"] },
    is_nullable => 0,
  },
  "status",
  {
    data_type => "enum",
    default_value => "request",
    extra => {
      list => ["request", "active", "delete", "error", "errordelete", "novlan"],
    },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_membership", ["outlet", "vlan"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+AAzGNhc2wBCdJkrh9w0Wg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
