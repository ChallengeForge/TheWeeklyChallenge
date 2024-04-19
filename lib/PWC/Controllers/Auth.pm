package PWC::Controllers::Auth;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

get '/login' => sub {
    template 'login';
};

get '/signup' => sub {
    template 'signup';
};

del '/logout' => sub {
    redirect '/login';
};

post '/login' => sub {
    redirect q{/};
};

1;
