package PWC::Controllers::PerlReview;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

get '/perl-review' => sub {
    my $reviews = [];
    template 'perl-reviews' => { 'reviews' => $reviews };
};

1;
