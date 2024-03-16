use utf8;
package PWC::Schema::Result::InterviewQuestion;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::InterviewQuestion

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<interview_questions>

=cut

__PACKAGE__->table("interview_questions");

=head1 ACCESSORS

=head2 question_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 question_text

  data_type: 'text'
  is_nullable: 0

=head2 is_active

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "question_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "question_text",
  { data_type => "text", is_nullable => 0 },
  "is_active",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</question_id>

=back

=cut

__PACKAGE__->set_primary_key("question_id");

=head1 RELATIONS

=head2 interview_responses

Type: has_many

Related object: L<PWC::Schema::Result::InterviewResponse>

=cut

__PACKAGE__->has_many(
  "interview_responses",
  "PWC::Schema::Result::InterviewResponse",
  { "foreign.question_id" => "self.question_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Mu4GHJA4cYNmG0IdBRqC0w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
