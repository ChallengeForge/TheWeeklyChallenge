package Controllers::PWC::Challenge;

use Dancer2;


get '/challenges' => sub {
    my $challenges = "LIST_OF_CHALLENGES"; # Here we will call the model logic to retrieve challenges from its table
    template 'challenges' => { 'challenges' => $challenges};
};

1;