package HomeController;

use Dancer2;


get '/' => sub {
    template 'index' => { 'title' => 'Perl Weekly Challenge' };
};

1;