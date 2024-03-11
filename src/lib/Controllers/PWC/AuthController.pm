package AuthController;

use Dancer2;


get '/login' => sub {
   
    template 'login';
};


get '/signup' => sub {
   
    template 'signup';
};


del '/logout' => sub {
   #logout logic
    redirect '/login';
};

post '/login' => sub {
    #login logic
    redirect '/';
};



1;