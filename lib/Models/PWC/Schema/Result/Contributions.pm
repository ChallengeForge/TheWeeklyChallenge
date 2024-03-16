package Models::PWC::Schema::Result::Contribution;

use base qw/DBIx::Class::Core/;

__PACKAGE__->table('contributions');
__PACKAGE__->add_columns(
    contribution_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    user_id => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    language_id => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    week_id => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    source => {
        data_type   => 'text',
        is_nullable => 1,
    },
);
__PACKAGE__->set_primary_key('contribution_id');

1;
