package PWC::Controllers::Challenge;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

sub get_ {
    my $challenges = [];
    return template 'challenges' => { 'challenges' => $challenges };
}

1;
