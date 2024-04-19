package PWC::Models::Schema::Result::Language;

use strict;
use warnings;

use 5.030;
use base qw/DBIx::Class::Core/;

our $VERSION = '0.030';

__PACKAGE__->table('languages');
__PACKAGE__->add_columns(
    language_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    language_name => {
        data_type   => 'varchar',
        size        => 255,
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key('language_id');

1;
