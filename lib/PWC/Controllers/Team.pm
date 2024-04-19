package PWC::Controllers::Team;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

get '/team' => sub {
    return template 'team/index';
};

1;
