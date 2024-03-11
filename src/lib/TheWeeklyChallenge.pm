package TheWeeklyChallenge;
use Dancer2;
our $VERSION = '0.1';

# Import Controllers
use  Controllers::PWC::HomeController;
use  Controllers::PWC::AboutController;
use  Controllers::PWC::AuthController;
use  Controllers::PWC::TeamController;
use Controllers::PWC::FaqsController;
use Controllers::PWC::PerlReviewController;
use Controllers::PWC::RakuReviewController;

dance;

true;
