use utf8;
package PWC::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_type

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 user_password

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_type",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "user_password",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_id>

=back

=cut

__PACKAGE__->set_primary_key("user_id");

=head1 RELATIONS

=head2 champions

Type: has_many

Related object: L<PWC::Schema::Result::Champion>

=cut

__PACKAGE__->has_many(
  "champions",
  "PWC::Schema::Result::Champion",
  { "foreign.user_id" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 comments

Type: has_many

Related object: L<PWC::Schema::Result::Comment>

=cut

__PACKAGE__->has_many(
  "comments",
  "PWC::Schema::Result::Comment",
  { "foreign.comments_by" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 contributions

Type: has_many

Related object: L<PWC::Schema::Result::Contribution>

=cut

__PACKAGE__->has_many(
  "contributions",
  "PWC::Schema::Result::Contribution",
  { "foreign.user_id" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 reviewers

Type: has_many

Related object: L<PWC::Schema::Result::Reviewer>

=cut

__PACKAGE__->has_many(
  "reviewers",
  "PWC::Schema::Result::Reviewer",
  { "foreign.user_id" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_badges

Type: has_many

Related object: L<PWC::Schema::Result::UserBadge>

=cut

__PACKAGE__->has_many(
  "user_badges",
  "PWC::Schema::Result::UserBadge",
  { "foreign.user_id" => "self.user_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 user_type

Type: belongs_to

Related object: L<PWC::Schema::Result::UserType>

=cut

__PACKAGE__->belongs_to(
  "user_type",
  "PWC::Schema::Result::UserType",
  { user_type_id => "user_type" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3oemfPhSf4mQdvb9XMI/Yw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
