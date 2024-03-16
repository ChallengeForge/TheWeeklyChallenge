use utf8;
package PWC::Schema::Result::Reviewer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::Reviewer

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<reviewers>

=cut

__PACKAGE__->table("reviewers");

=head1 ACCESSORS

=head2 reviewer_id

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

=cut

__PACKAGE__->add_columns(
  "reviewer_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "language_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</reviewer_id>

=back

=cut

__PACKAGE__->set_primary_key("reviewer_id");

=head1 RELATIONS

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

=head2 reviews

Type: has_many

Related object: L<PWC::Schema::Result::Review>

=cut

__PACKAGE__->has_many(
  "reviews",
  "PWC::Schema::Result::Review",
  { "foreign.reviewer_id" => "self.reviewer_id" },
  { cascade_copy => 0, cascade_delete => 0 },
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


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:uEtR/e/kaenHm3EW+e4/+w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
