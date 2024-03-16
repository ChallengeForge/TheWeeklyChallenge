use utf8;
package PWC::Schema::Result::Badge;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::Badge

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<badges>

=cut

__PACKAGE__->table("badges");

=head1 ACCESSORS

=head2 badge_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 badge_name

  data_type: 'text'
  is_nullable: 0

=head2 badge_icon

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "badge_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "badge_name",
  { data_type => "text", is_nullable => 0 },
  "badge_icon",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</badge_id>

=back

=cut

__PACKAGE__->set_primary_key("badge_id");

=head1 RELATIONS

=head2 user_badges

Type: has_many

Related object: L<PWC::Schema::Result::UserBadge>

=cut

__PACKAGE__->has_many(
  "user_badges",
  "PWC::Schema::Result::UserBadge",
  { "foreign.badge_id" => "self.badge_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:dIqzIZtwQAXQrzgK6RkVyQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
