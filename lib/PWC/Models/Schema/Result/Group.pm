package PWC::Models::Schema::Result::Group;

use strict;
use warnings;

use 5.040;
use base qw/DBIx::Class::Core/;

our $VERSION = '0.0.1';

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
