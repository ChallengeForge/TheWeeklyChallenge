get '/search-weekly-challenges' => sub {
    template 'challenges' => { 'challenges' => $challenges};
};

1;