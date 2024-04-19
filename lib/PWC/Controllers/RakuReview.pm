package PWC::Controllers::RakuReview;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

get '/raku-review' => sub {
    my $reviews = [];
    template 'raku-reviews' => { 'reviews' => $reviews };
};

1;
