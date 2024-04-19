package PWC::Models::Schema::Result::UserType;

use strict;
use warnings;

use 5.030;
use base qw/DBIx::Class::Core/;

our $VERSION = '0.0.1';

__PACKAGE__->table('user_types');
__PACKAGE__->add_columns(
    user_type_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    user_type_name => {
        data_type   => 'varchar',
        size        => 255,
        is_nullable => 0,
    },
    profile_photo => {
        data_type   => 'varchar',
        size        => 255,
        is_nullable => 1,
    },
);

__PACKAGE__->set_primary_key('user_type_id');

1;
