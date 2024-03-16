use utf8;
package PWC::Schema::Result::Review;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::Review

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<reviews>

=cut

__PACKAGE__->table("reviews");

=head1 ACCESSORS

=head2 review_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 week_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 reviewer_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "review_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "week_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "reviewer_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</review_id>

=back

=cut

__PACKAGE__->set_primary_key("review_id");

=head1 RELATIONS

=head2 reviewer

Type: belongs_to

Related object: L<PWC::Schema::Result::Reviewer>

=cut

__PACKAGE__->belongs_to(
  "reviewer",
  "PWC::Schema::Result::Reviewer",
  { reviewer_id => "reviewer_id" },
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
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:+9KIyQBeYL7Bh8S2nHHqVg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
