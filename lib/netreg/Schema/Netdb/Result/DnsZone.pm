package netreg::Schema::Netdb::Result::DnsZone;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::DnsZone

=cut

__PACKAGE__->table("dns_zone");

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
  size: 255

=head2 soa_host

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 soa_email

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 soa_serial

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 soa_refresh

  data_type: 'integer'
  default_value: 3600
  extra: {unsigned => 1}
  is_nullable: 0

=head2 soa_retry

  data_type: 'integer'
  default_value: 900
  extra: {unsigned => 1}
  is_nullable: 0

=head2 soa_expire

  data_type: 'integer'
  default_value: 2419200
  extra: {unsigned => 1}
  is_nullable: 0

=head2 soa_minimum

  data_type: 'integer'
  default_value: 3600
  extra: {unsigned => 1}
  is_nullable: 0

=head2 type

  data_type: 'enum'
  extra: {list => ["fw-toplevel","rv-toplevel","fw-permissible","rv-permissible","fw-delegated","rv-delegated"]}
  is_nullable: 1

=head2 last_update

  data_type: 'datetime'
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 soa_default

  data_type: 'integer'
  default_value: 86400
  extra: {unsigned => 1}
  is_nullable: 0

=head2 parent

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ddns_auth

  data_type: 'text'
  is_nullable: 1

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
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "soa_host",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "soa_email",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 255 },
  "soa_serial",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "soa_refresh",
  {
    data_type => "integer",
    default_value => 3600,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "soa_retry",
  {
    data_type => "integer",
    default_value => 900,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "soa_expire",
  {
    data_type => "integer",
    default_value => 2419200,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "soa_minimum",
  {
    data_type => "integer",
    default_value => 3600,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "type",
  {
    data_type => "enum",
    extra => {
      list => [
        "fw-toplevel",
        "rv-toplevel",
        "fw-permissible",
        "rv-permissible",
        "fw-delegated",
        "rv-delegated",
      ],
    },
    is_nullable => 1,
  },
  "last_update",
  {
    data_type     => "datetime",
    default_value => "0000-00-00 00:00:00",
    is_nullable   => 0,
  },
  "soa_default",
  {
    data_type => "integer",
    default_value => 86400,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "parent",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "ddns_auth",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("index_name", ["name"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lesnVC5c8z9Q8R9SqHLMPw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
