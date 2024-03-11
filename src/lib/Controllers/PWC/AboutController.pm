package AboutController;

use Dancer2;


get '/about' => sub {
    template 'about';
};

1;