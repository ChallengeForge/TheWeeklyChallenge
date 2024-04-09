get '/faqs' => sub {
    my $faqs = "LIST_OF_FAQS"; # Here we will call the model logic to retrieve faqs from its table
    template 'faqs' => { 'faqs' => $faqs};
};

1;