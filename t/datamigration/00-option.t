#!/usr/bin/env perl

use strict;
use warnings FATAL => 'all';
use Test::More tests => 1;

use 5.030;
use Try::Tiny;
use English qw(-no_match_vars);
use lib     qw("lib");
use PWC::Utils::DataMigration;

our $VERSION = '0.0.1';

try {
    PWC::Utils::DataMigration->new;
}
catch {
    like(
        $EVAL_ERROR,
        qr/Missing required arguments: dest_dir, source_dir/mxs,
        'Testing without required arguments',
    );
};
