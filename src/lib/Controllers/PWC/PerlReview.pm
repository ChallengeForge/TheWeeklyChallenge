package Controllers::PWC::PerlReview;

use Dancer2;


get '/perl-review' => sub {
    my $reviews = "LIST_OF_REVIEWS"; # Here we will call the model logic to retrieve reviews from its table
    template 'perl-reviews' => { 'reviews' => $reviews};
};

1;