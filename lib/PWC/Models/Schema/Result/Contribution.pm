package PWC::Models::Schema::Result::Contribution;

use strict;
use warnings;

use 5.030;
use base qw/DBIx::Class::Core/;

our $VERSION = '0.0.1';

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
