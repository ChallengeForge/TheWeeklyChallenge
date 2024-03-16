use utf8;
package PWC::Schema::Result::TaskMaster;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

PWC::Schema::Result::TaskMaster

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<task_masters>

=cut

__PACKAGE__->table("task_masters");

=head1 ACCESSORS

=head2 task_master_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 task_master_name

  data_type: 'text'
  is_nullable: 0

=head2 task_master_url

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "task_master_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "task_master_name",
  { data_type => "text", is_nullable => 0 },
  "task_master_url",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</task_master_id>

=back

=cut

__PACKAGE__->set_primary_key("task_master_id");


# Created by DBIx::Class::Schema::Loader v0.07052 @ 2024-03-16 17:25:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xSwLVYJKCwom5kCcUC4bWw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
