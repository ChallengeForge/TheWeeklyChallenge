use utf8;
package PWC::Schema::Result::Champion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::Champion

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<champions>

=cut

__PACKAGE__->table("champions");

=head1 ACCESSORS

=head2 champion_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 champion_title

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "champion_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "champion_title",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</champion_id>

=back

=cut

__PACKAGE__->set_primary_key("champion_id");

=head1 RELATIONS

=head2 interview_responses

Type: has_many

Related object: L<PWC::Schema::Result::InterviewResponse>

=cut

__PACKAGE__->has_many(
  "interview_responses",
  "PWC::Schema::Result::InterviewResponse",
  { "foreign.champion_id" => "self.champion_id" },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fCPIWbnWzeonNQbubUbf2Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
