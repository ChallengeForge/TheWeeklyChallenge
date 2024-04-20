package PWC::Controllers::PerlReview;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

sub get_ {
    my $reviews = [];
    return template 'perl-reviews' => { 'reviews' => $reviews };
}

1;
