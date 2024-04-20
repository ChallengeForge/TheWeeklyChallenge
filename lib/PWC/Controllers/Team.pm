package PWC::Controllers::Team;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

sub get_ {
    return template 'team/index';
}

1;
