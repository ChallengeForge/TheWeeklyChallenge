package TheWeeklyChallenge;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index' => { 'title' => 'TheWeeklyChallenge' };
};

true;
