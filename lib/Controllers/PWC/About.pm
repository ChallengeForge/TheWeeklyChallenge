package Controllers::PWC::About;

use Dancer2;


get '/about' => sub {
    template 'about';
};

1;