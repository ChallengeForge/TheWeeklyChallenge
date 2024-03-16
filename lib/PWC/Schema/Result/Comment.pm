use utf8;
package PWC::Schema::Result::Comment;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::Comment

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<comments>

=cut

__PACKAGE__->table("comments");

=head1 ACCESSORS

=head2 comment_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 contribution_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 comments_by

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 comments

  data_type: 'text'
  is_nullable: 0

=head2 reply_to

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 1

=head2 is_approved

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "comment_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "contribution_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "comments_by",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "comments",
  { data_type => "text", is_nullable => 0 },
  "reply_to",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 1 },
  "is_approved",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</comment_id>

=back

=cut

__PACKAGE__->set_primary_key("comment_id");

=head1 RELATIONS

=head2 comment_by

Type: belongs_to

Related object: L<PWC::Schema::Result::User>

=cut

__PACKAGE__->belongs_to(
  "comment_by",
  "PWC::Schema::Result::User",
  { user_id => "comments_by" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 comments

Type: has_many

Related object: L<PWC::Schema::Result::Comment>

=cut

__PACKAGE__->has_many(
  "comments",
  "PWC::Schema::Result::Comment",
  { "foreign.reply_to" => "self.comment_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contribution

Type: belongs_to

Related object: L<PWC::Schema::Result::Contribution>

=cut

__PACKAGE__->belongs_to(
  "contribution",
  "PWC::Schema::Result::Contribution",
  { contribution_id => "contribution_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 reply_to

Type: belongs_to

Related object: L<PWC::Schema::Result::Comment>

=cut

__PACKAGE__->belongs_to(
  "reply_to",
  "PWC::Schema::Result::Comment",
  { comment_id => "reply_to" },
  {
    is_deferrable => 0,
    join_type     => "LEFT",
    on_delete     => "NO ACTION",
    on_update     => "NO ACTION",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xgWHE6IkAIP+wfBDED/Xkw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
