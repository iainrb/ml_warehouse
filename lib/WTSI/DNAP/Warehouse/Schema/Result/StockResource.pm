
package WTSI::DNAP::Warehouse::Schema::Result::StockResource;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

WTSI::DNAP::Warehouse::Schema::Result::StockResource

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components('InflateColumn::DateTime');

=head1 TABLE: C<stock_resource>

=cut

__PACKAGE__->table('stock_resource');

=head1 ACCESSORS

=head2 id_stock_resource_tmp

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 last_updated

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

Timestamp of last update

=head2 recorded_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

Timestamp of warehouse update

=head2 created

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

Timestamp of initial registration of stock in LIMS

=head2 deleted_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

Timestamp of initial registration of deletion in parent LIMS. NULL if not deleted.

=head2 id_sample_tmp

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

Sample id, see 'sample.id_sample_tmp'

=head2 id_study_tmp

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

Sample id, see 'study.id_study_tmp'

=head2 id_lims

  data_type: 'varchar'
  is_nullable: 0
  size: 10

LIM system identifier

=head2 id_stock_resource_lims

  data_type: 'varchar'
  is_nullable: 0
  size: 20

Lims specific identifier for the stock

=head2 stock_resource_uuid

  data_type: 'varchar'
  is_nullable: 1
  size: 36

Uuid identifier for the stock

=head2 labware_type

  data_type: 'varchar'
  is_nullable: 0
  size: 255

The type of labware containing the stock. eg. Well, Tube

=head2 labware_machine_barcode

  data_type: 'varchar'
  is_nullable: 0
  size: 255

The barcode of the containing labware as read by a barcode scanner

=head2 labware_human_barcode

  data_type: 'varchar'
  is_nullable: 0
  size: 255

The barcode of the containing labware in human readable format

=head2 labware_coordinate

  data_type: 'varchar'
  is_nullable: 1
  size: 255

For wells, the coordinate on the containing plate. Null for tubes.

=head2 current_volume

  data_type: 'float'
  is_nullable: 1

The current volume of material in microlitres based on measurements and know usage

=head2 initial_volume

  data_type: 'float'
  is_nullable: 1

The result of the initial volume measurement in microlitres conducted on the material

=head2 concentration

  data_type: 'float'
  is_nullable: 1

The concentration of material recorded in the lab in nanograms per microlitre

=head2 gel_pass

  data_type: 'varchar'
  is_nullable: 1
  size: 255

The recorded result for the qel QC assay.

=head2 pico_pass

  data_type: 'varchar'
  is_nullable: 1
  size: 255

The recorded result for the pico green assay. A pass indicates a successful assay, not sufficient material.

=head2 snp_count

  data_type: 'integer'
  is_nullable: 1

The number of markers detected in genotyping assays

=head2 measured_gender

  data_type: 'varchar'
  is_nullable: 1
  size: 255

The gender call base on the genotyping assay

=cut

__PACKAGE__->add_columns(
  'id_stock_resource_tmp',
  { data_type => 'integer', is_auto_increment => 1, is_nullable => 0 },
  'last_updated',
  {
    data_type => 'datetime',
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  'recorded_at',
  {
    data_type => 'datetime',
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  'created',
  {
    data_type => 'datetime',
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  'deleted_at',
  {
    data_type => 'datetime',
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  'id_sample_tmp',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'id_study_tmp',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'id_lims',
  { data_type => 'varchar', is_nullable => 0, size => 10 },
  'id_stock_resource_lims',
  { data_type => 'varchar', is_nullable => 0, size => 20 },
  'stock_resource_uuid',
  { data_type => 'varchar', is_nullable => 1, size => 36 },
  'labware_type',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'labware_machine_barcode',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'labware_human_barcode',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'labware_coordinate',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'current_volume',
  { data_type => 'float', is_nullable => 1 },
  'initial_volume',
  { data_type => 'float', is_nullable => 1 },
  'concentration',
  { data_type => 'float', is_nullable => 1 },
  'gel_pass',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'pico_pass',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'snp_count',
  { data_type => 'integer', is_nullable => 1 },
  'measured_gender',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id_stock_resource_tmp>

=back

=cut

__PACKAGE__->set_primary_key('id_stock_resource_tmp');


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-12 14:07:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BAWxZA7BoMpT+QPokwmGFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
