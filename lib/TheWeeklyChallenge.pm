package TheWeeklyChallenge;
use Dancer2;
our $VERSION = '0.1';

# Import Controllers
use Controllers::PWC::Home;
use Controllers::PWC::About;
use Controllers::PWC::Auth;
use Controllers::PWC::Team;
use Controllers::PWC::Challenges;
use Controllers::PWC::FAQs;
use Controllers::PWC::RakuReview;
use Controllers::PWC::PerlReview;

dance;

true;
