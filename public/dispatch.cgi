#!/usr/bin/env perl

use 5.030;
use Dancer2;
use Path::This qw($THISDIR);
use Plack::Runner;

our $VERSION = '0.0.1';

BEGIN { local $ENV{ DANCER_APPHANDLER } = 'PSGI'; }

# For some reason Apache SetEnv directives don't propagate
# correctly to the dispatchers, so forcing PSGI and env here
# is safer.

set apphandler  => 'PSGI';
set environment => 'production';

my $psgi = path( $THISDIR, q{..}, q{bin}, q{pwc.psgi} );

if ( !-r $psgi ) {
    die "Unable to read startup script: $psgi\n";
}

Plack::Runner->run($psgi);
