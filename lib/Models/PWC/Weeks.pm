package PWC::Schema::Result::Week;

use base qw/DBIx::Class::Core/;

__PACKAGE__->table('weeks');
__PACKAGE__->add_columns(
    week_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    week_name => {
        data_type   => 'varchar',
        size        => 255,
        is_nullable => 0,
    },
);
__PACKAGE__->set_primary_key('week_id');

1;
