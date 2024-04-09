get '/about' => sub {
    # my $about =
    # send_file('../prototype/Frontend/about.html', system_path => 1);
    # # send_file "/css/admin.css"
    template "about"
};

1;