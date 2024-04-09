package TheWeeklyChallenge;
use Dancer2;
our $VERSION = '0.1';

# Import Controllers
require Controllers::PWC::Home;
require Controllers::PWC::About;
require Controllers::PWC::Auth;
require Controllers::PWC::Team;
require Controllers::PWC::Blogs;
require Controllers::PWC::Challenges;
require Controllers::PWC::Champions;
require Controllers::PWC::FAQs;
require Controllers::PWC::RakuReview;
require Controllers::PWC::PerlReview;
require Controllers::PWC::Logout;
require Controllers::PWC::ListOutreachyApplicants;
require Controllers::PWC::SearchContributions;
require Controllers::PWC::Guest;
require Controllers::PWC::GuestLeader;
require Controllers::PWC::Teamleader;
require Controllers::PWC::Contact;
require Controllers::PWC::RssFeed;
require Controllers::PWC::SignIn;
require Controllers::PWC::UserDashboard;

dance;

true;
