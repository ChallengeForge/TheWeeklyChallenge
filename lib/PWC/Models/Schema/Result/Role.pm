package PWC::Models::Schema::Result::Role;

use strict;
use warnings;

use 5.030;
use base qw/DBIx::Class::Core/;

our $VERSION = '0.0.1';

__PACKAGE__->table('roles');
__PACKAGE__->add_columns(
    role_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    permission_id => {
        data_type   => 'integer',
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key('role_id');

1;
