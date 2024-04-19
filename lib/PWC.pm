package PWC;

use 5.030;
use Dancer2;

our $VERSION = '0.0.1';

# Import Controllers
use PWC::Controllers::Home;
use PWC::Controllers::About;
use PWC::Controllers::Auth;
use PWC::Controllers::Team;
use PWC::Controllers::Challenge;
use PWC::Controllers::FAQ;
use PWC::Controllers::RakuReview;
use PWC::Controllers::PerlReview;

1;
