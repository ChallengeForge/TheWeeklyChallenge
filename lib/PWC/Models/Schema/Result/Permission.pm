package PWC::Models::Schema::Result::Permission;

use strict;
use warnings;

use 5.030;
use base qw/DBIx::Class::Core/;

our $VERSION = '0.0.1';

__PACKAGE__->table('permissions');
__PACKAGE__->add_columns(
    permission_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    permission_name => {
        data_type   => 'varchar',
        size        => 255,
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key('permission_id');

1;
