#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use PWC;

PWC->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use PWC;
use Plack::Builder;

builder {
    enable 'Deflater';
    PWC->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use PWC;
use PWC_admin;

use Plack::Builder;

builder {
    mount '/'      => PWC->to_app;
    mount '/admin'      => PWC_admin->to_app;
}

=end comment

=cut

