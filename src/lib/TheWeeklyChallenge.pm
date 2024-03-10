package TheWeeklyChallenge;

our $VERSION = '0.1';

use Dancer2;

get '/' => sub {

  my $challenge = "Setting Up Dancer2 Backend";
 return template 'index' => { 'challenge' => $challenge};
};

dance;
true;
