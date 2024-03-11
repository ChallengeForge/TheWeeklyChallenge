package TeamController;

use Dancer2;

get '/team' => sub {
#   my $team_data = Model::Team->get_team_info();  # Call Model to retrieve data
  return template 'team/index';
};

get '/' => sub {
    template 'index' => { 'title' => 'PWC' };
};

1;