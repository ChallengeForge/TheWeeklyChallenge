use utf8;
package PWC::Schema::Result::Permission;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::Permission

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<permissions>

=cut

__PACKAGE__->table("permissions");

=head1 ACCESSORS

=head2 permission_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 permission_name

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "permission_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "permission_name",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</permission_id>

=back

=cut

__PACKAGE__->set_primary_key("permission_id");

=head1 RELATIONS

=head2 roles

Type: has_many

Related object: L<PWC::Schema::Result::Role>

=cut

__PACKAGE__->has_many(
  "roles",
  "PWC::Schema::Result::Role",
  { "foreign.permission_id" => "self.permission_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:btKbLmtYyp1geFrt2qJ9mA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
