use utf8;
package PWC::Schema::Result::Language;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::Language

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<languages>

=cut

__PACKAGE__->table("languages");

=head1 ACCESSORS

=head2 language_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 language_name

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "language_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "language_name",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</language_id>

=back

=cut

__PACKAGE__->set_primary_key("language_id");

=head1 RELATIONS

=head2 contributions

Type: has_many

Related object: L<PWC::Schema::Result::Contribution>

=cut

__PACKAGE__->has_many(
  "contributions",
  "PWC::Schema::Result::Contribution",
  { "foreign.language_id" => "self.language_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 reviewers

Type: has_many

Related object: L<PWC::Schema::Result::Reviewer>

=cut

__PACKAGE__->has_many(
  "reviewers",
  "PWC::Schema::Result::Reviewer",
  { "foreign.language_id" => "self.language_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IweZcuHl11D3BxbDomR/bw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
