use utf8;
package PWC::Schema::Result::InterviewResponse;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::InterviewResponse

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<interview_responses>

=cut

__PACKAGE__->table("interview_responses");

=head1 ACCESSORS

=head2 champion_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 question_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 question_response

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "champion_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "question_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "question_response",
  { data_type => "text", is_nullable => 0 },
);

=head1 RELATIONS

=head2 champion

Type: belongs_to

Related object: L<PWC::Schema::Result::Champion>

=cut

__PACKAGE__->belongs_to(
  "champion",
  "PWC::Schema::Result::Champion",
  { champion_id => "champion_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 question

Type: belongs_to

Related object: L<PWC::Schema::Result::InterviewQuestion>

=cut

__PACKAGE__->belongs_to(
  "question",
  "PWC::Schema::Result::InterviewQuestion",
  { question_id => "question_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AeinXDT9Lk0rgSd9p5Xtyg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
