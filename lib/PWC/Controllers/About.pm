package PWC::Controllers::About;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

sub get_ {
    return template 'about';
}

1;
