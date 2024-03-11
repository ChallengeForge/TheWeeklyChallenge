package TeamController;

use Dancer2;

get '/team' => sub {
#   my $team_data = Model::Team->get_team_info();  # Call Model to retrieve data
  return template 'team/index';
};


1;