package PWC::Controllers::FAQ;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

get '/faqs' => sub {
    my $faqs = [];
    template 'faqs' => { 'faqs' => $faqs };
};

1;
