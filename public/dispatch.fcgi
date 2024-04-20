#!/usr/bin/env perl

use 5.030;
use Dancer2;
use Path::This "$THISDIR";
use Plack::Handler::FCGI;
use English qw(-no_match_vars);

our $VERSION = '0.0.1';

BEGIN { local $ENV{ DANCER_APPHANDLER } = 'PSGI'; }

# For some reason Apache SetEnv directives don't propagate
# correctly to the dispatchers, so forcing PSGI and env here
# is safer.
set apphandler  => 'PSGI';
set environment => 'production';

my $psgi = path( $THISDIR, q{..}, q{bin}, q{pwc.psgi} );
my $app  = do($psgi);
die "Unable to read startup script: $EVAL_ERROR\n" if $EVAL_ERROR;
my $server = Plack::Handler::FCGI->new( nproc => 5, detach => 1 );

$server->run($app);
