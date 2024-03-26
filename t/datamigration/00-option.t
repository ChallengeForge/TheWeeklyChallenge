#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use Test::More tests => 1;

use lib ("lib");

use PWC::Utils::DataMigration;

eval { PWC::Utils::DataMigration->new };
like($@, qr/Missing required arguments: dest_dir, source_dir/);