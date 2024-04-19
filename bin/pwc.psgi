#!/usr/bin/env perl

use strict;
use warnings;
use 5.030;
use Path::This "$THISDIR";
use lib "$THISDIR/../lib";

our $VERSION = '0.0.1';

use TheWeeklyChallenge;

TheWeeklyChallenge->to_app;
