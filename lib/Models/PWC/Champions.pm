package PWC::Schema::Result::Champion;

use base qw/DBIx::Class::Core/;

__PACKAGE__->table('champions');
__PACKAGE__->add_columns(
    champion_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    user_id => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    champion_title => {
        data_type   => 'varchar',
        size        => 255,
        is_nullable => 0,
    },
);
__PACKAGE__->set_primary_key('champion_id');

1;
