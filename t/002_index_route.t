#!/usr/bin/env perl

use strict;
use warnings;

use 5.030;
use PWC;
use Test::More tests => 2;
use Plack::Test;
use HTTP::Request::Common;
use Ref::Util qw<is_coderef>;

our $VERSION = '0.0.1';

my $app = PWC->to_app;
ok( is_coderef($app), 'Got app' );

my $test = Plack::Test->create($app);
my $res  = $test->request( GET q{/} );

ok( $res->is_success, '[GET /] successful' );
