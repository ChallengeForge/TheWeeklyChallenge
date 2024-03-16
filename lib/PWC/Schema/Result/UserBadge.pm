use utf8;
package PWC::Schema::Result::UserBadge;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::UserBadge

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<user_badges>

=cut

__PACKAGE__->table("user_badges");

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 badge_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "badge_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 RELATIONS

=head2 badge

Type: belongs_to

Related object: L<PWC::Schema::Result::Badge>

=cut

__PACKAGE__->belongs_to(
  "badge",
  "PWC::Schema::Result::Badge",
  { badge_id => "badge_id" },
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


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ye4JF5jrU9rj7Z4f+gxMvw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
