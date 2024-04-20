package PWC;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

use PWC::Controllers::Home;

get q{/} => sub {
    PWC::Controllers::Home::get_();
};

1;
