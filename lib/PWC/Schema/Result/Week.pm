use utf8;
package PWC::Schema::Result::Week;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::Week

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<weeks>

=cut

__PACKAGE__->table("weeks");

=head1 ACCESSORS

=head2 week_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 week_name

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "week_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "week_name",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</week_id>

=back

=cut

__PACKAGE__->set_primary_key("week_id");

=head1 RELATIONS

=head2 contributions

Type: has_many

Related object: L<PWC::Schema::Result::Contribution>

=cut

__PACKAGE__->has_many(
  "contributions",
  "PWC::Schema::Result::Contribution",
  { "foreign.week_id" => "self.week_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 reviews

Type: has_many

Related object: L<PWC::Schema::Result::Review>

=cut

__PACKAGE__->has_many(
  "reviews",
  "PWC::Schema::Result::Review",
  { "foreign.week_id" => "self.week_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 tasks

Type: has_many

Related object: L<PWC::Schema::Result::Task>

=cut

__PACKAGE__->has_many(
  "tasks",
  "PWC::Schema::Result::Task",
  { "foreign.week_id" => "self.week_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:C2So0hqEf15zXeyXg1TjWw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
