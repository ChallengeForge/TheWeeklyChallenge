package PWC;
use Dancer2;
our $VERSION = '0.1';


use FindBin;
#use lib "$FindBin::Bin/../lib/Controllers";
use Controllers::TeamController;
use Controllers::AboutController;
use Controllers::ChallengesController;
use Controllers::FaqsController;
use Controllers::HomeController;
use Controllers::AuthController;
use Controllers::RakuReviewController;
use Controllers::PerlReviewController;


dance;
true;