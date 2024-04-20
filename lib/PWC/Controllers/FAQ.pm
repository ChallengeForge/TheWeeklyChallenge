package PWC::Controllers::FAQ;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

sub get_ {
    my $faqs = [];
    return template 'faqs' => { 'faqs' => $faqs };
}

1;
