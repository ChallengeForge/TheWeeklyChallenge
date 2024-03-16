use utf8;
package PWC::Schema::Result::UserType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::UserType

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<user_types>

=cut

__PACKAGE__->table("user_types");

=head1 ACCESSORS

=head2 user_type_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_type_name

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "user_type_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_type_name",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</user_type_id>

=back

=cut

__PACKAGE__->set_primary_key("user_type_id");

=head1 RELATIONS

=head2 users

Type: has_many

Related object: L<PWC::Schema::Result::User>

=cut

__PACKAGE__->has_many(
  "users",
  "PWC::Schema::Result::User",
  { "foreign.user_type" => "self.user_type_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:mEaixotwY6r2/EgZecwZeA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
