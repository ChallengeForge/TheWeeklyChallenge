package PerlReviewController;

use Dancer2;


get '/raku-review' => sub {
    my $reviews = "LIST_OF_REVIEWS"; # Here we will call the model logic to retrieve reviews from its table
    template 'raku-reviews' => { 'reviews' => $reviews};
};

1;