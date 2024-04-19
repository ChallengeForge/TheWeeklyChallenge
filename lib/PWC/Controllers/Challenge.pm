package PWC::Controllers::Challenge;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

get '/challenges' => sub {
    my $challenges = [];
    template 'challenges' => { 'challenges' => $challenges };
};

1;
