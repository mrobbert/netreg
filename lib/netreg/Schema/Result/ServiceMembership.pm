package netreg::Schema::Result::ServiceMembership;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Result::ServiceMembership

=cut

__PACKAGE__->table("service_membership");

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

=head2 service

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 member_type

  data_type: 'enum'
  default_value: 'activation_queue'
  extra: {list => ["activation_queue","building","cable","dns_zone","groups","machine","outlet","outlet_type","service","subnet","subnet_share","users","vlan"]}
  is_nullable: 0

=head2 member_tid

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
  "service",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "member_type",
  {
    data_type => "enum",
    default_value => "activation_queue",
    extra => {
      list => [
        "activation_queue",
        "building",
        "cable",
        "dns_zone",
        "groups",
        "machine",
        "outlet",
        "outlet_type",
        "service",
        "subnet",
        "subnet_share",
        "users",
        "vlan",
      ],
    },
    is_nullable => 0,
  },
  "member_tid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_members", ["member_type", "member_tid", "service"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-06 16:24:26
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:paQr7SvFB2rnfR/t39+Xcg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
