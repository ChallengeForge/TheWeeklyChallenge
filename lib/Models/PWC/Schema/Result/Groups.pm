package Models::PWC::Schema::Result::Group;

use base qw/DBIx::Class::Core/;

__PACKAGE__->table('groups');
__PACKAGE__->add_columns(
    group_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    role_id => {
        data_type   => 'integer',
        is_nullable => 0,
    },
);
__PACKAGE__->set_primary_key('group_id');

1;
