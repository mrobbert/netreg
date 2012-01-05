package netreg::Schema::Netdb::Result::Cable;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

netreg::Schema::Netdb::Result::Cable

=cut

__PACKAGE__->table("cable");

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

=head2 label_from

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 24

=head2 label_to

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 24

=head2 type

  data_type: 'enum'
  extra: {list => ["TYPE1","TYPE2","CAT5","CAT6","CATV","SMF0080","MMF0500","MMF0625","MMF1000","CAT5-TELCO"]}
  is_nullable: 1

=head2 destination

  data_type: 'enum'
  extra: {list => ["OUTLET","CLOSET"]}
  is_nullable: 1

=head2 rack

  data_type: 'enum'
  default_value: 'IBM'
  extra: {list => ["IBM","CAT5/6","CATV","FIBER","TELCO"]}
  is_nullable: 0

=head2 prefix

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 1

=head2 from_building

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 8

=head2 from_wing

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 1

=head2 from_floor

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 2

=head2 from_closet

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 1

=head2 from_rack

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 1

=head2 from_panel

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 1

=head2 from_x

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 1

=head2 from_y

  data_type: 'char'
  default_value: (empty string)
  is_nullable: 0
  size: 1

=head2 to_building

  data_type: 'char'
  is_nullable: 1
  size: 8

=head2 to_wing

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 to_floor

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 to_closet

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 to_rack

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 to_panel

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 to_x

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 to_y

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 to_floor_plan_x

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 to_floor_plan_y

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 to_outlet_number

  data_type: 'char'
  is_nullable: 1
  size: 1

=head2 to_room_number

  data_type: 'char'
  is_nullable: 1
  size: 32

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
  "label_from",
  { data_type => "char", default_value => "", is_nullable => 0, size => 24 },
  "label_to",
  { data_type => "char", default_value => "", is_nullable => 0, size => 24 },
  "type",
  {
    data_type => "enum",
    extra => {
      list => [
        "TYPE1",
        "TYPE2",
        "CAT5",
        "CAT6",
        "CATV",
        "SMF0080",
        "MMF0500",
        "MMF0625",
        "MMF1000",
        "CAT5-TELCO",
      ],
    },
    is_nullable => 1,
  },
  "destination",
  {
    data_type => "enum",
    extra => { list => ["OUTLET", "CLOSET"] },
    is_nullable => 1,
  },
  "rack",
  {
    data_type => "enum",
    default_value => "IBM",
    extra => { list => ["IBM", "CAT5/6", "CATV", "FIBER", "TELCO"] },
    is_nullable => 0,
  },
  "prefix",
  { data_type => "char", default_value => "", is_nullable => 0, size => 1 },
  "from_building",
  { data_type => "char", default_value => "", is_nullable => 0, size => 8 },
  "from_wing",
  { data_type => "char", default_value => "", is_nullable => 0, size => 1 },
  "from_floor",
  { data_type => "char", default_value => "", is_nullable => 0, size => 2 },
  "from_closet",
  { data_type => "char", default_value => "", is_nullable => 0, size => 1 },
  "from_rack",
  { data_type => "char", default_value => "", is_nullable => 0, size => 1 },
  "from_panel",
  { data_type => "char", default_value => "", is_nullable => 0, size => 1 },
  "from_x",
  { data_type => "char", default_value => "", is_nullable => 0, size => 1 },
  "from_y",
  { data_type => "char", default_value => "", is_nullable => 0, size => 1 },
  "to_building",
  { data_type => "char", is_nullable => 1, size => 8 },
  "to_wing",
  { data_type => "char", is_nullable => 1, size => 1 },
  "to_floor",
  { data_type => "char", is_nullable => 1, size => 2 },
  "to_closet",
  { data_type => "char", is_nullable => 1, size => 1 },
  "to_rack",
  { data_type => "char", is_nullable => 1, size => 1 },
  "to_panel",
  { data_type => "char", is_nullable => 1, size => 1 },
  "to_x",
  { data_type => "char", is_nullable => 1, size => 1 },
  "to_y",
  { data_type => "char", is_nullable => 1, size => 1 },
  "to_floor_plan_x",
  { data_type => "char", is_nullable => 1, size => 2 },
  "to_floor_plan_y",
  { data_type => "char", is_nullable => 1, size => 2 },
  "to_outlet_number",
  { data_type => "char", is_nullable => 1, size => 1 },
  "to_room_number",
  { data_type => "char", is_nullable => 1, size => 32 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("label_from_2", ["label_from"]);


# Created by DBIx::Class::Schema::Loader v0.07000 @ 2012-01-05 16:20:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XqSs9hZbHNexoYYSRHoKPg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
