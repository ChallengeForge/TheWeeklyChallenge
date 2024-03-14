package PWC::Schema::Result::User;

use base qw/DBIx::Class::Core/;

__PACKAGE__->table('users');
__PACKAGE__->add_columns(
    user_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    user_type => {
        data_type   => 'integer',
        is_nullable => 0,
    },
    user_password => {
        data_type   => 'varchar',
        size        => 255,
        is_nullable => 0,
    },
);
__PACKAGE__->set_primary_key('user_id');

1;
