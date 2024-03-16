use utf8;
package PWC::Schema::Result::Contribution;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::Contribution

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<contributions>

=cut

__PACKAGE__->table("contributions");

=head1 ACCESSORS

=head2 contribution_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 language_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 week_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 source

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "contribution_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "language_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "week_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "source",
  { data_type => "text", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</contribution_id>

=back

=cut

__PACKAGE__->set_primary_key("contribution_id");

=head1 RELATIONS

=head2 comments

Type: has_many

Related object: L<PWC::Schema::Result::Comment>

=cut

__PACKAGE__->has_many(
  "comments",
  "PWC::Schema::Result::Comment",
  { "foreign.contribution_id" => "self.contribution_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 language

Type: belongs_to

Related object: L<PWC::Schema::Result::Language>

=cut

__PACKAGE__->belongs_to(
  "language",
  "PWC::Schema::Result::Language",
  { language_id => "language_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 user

Type: belongs_to

Related object: L<PWC::Schema::Result::User>

=cut

__PACKAGE__->belongs_to(
  "user",
  "PWC::Schema::Result::User",
  { user_id => "user_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 week

Type: belongs_to

Related object: L<PWC::Schema::Result::Week>

=cut

__PACKAGE__->belongs_to(
  "week",
  "PWC::Schema::Result::Week",
  { week_id => "week_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:yeIfOCIqH41RG29w8uC1gQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
