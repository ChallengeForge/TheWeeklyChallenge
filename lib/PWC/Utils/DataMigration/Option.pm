package PWC::Utils::DataMigration::Option;

use strict;
use warnings;
use 5.030;
use Moo::Role;
use MooX::Options;

our $VERSION = '0.0.1';

option 'source_dir' => (
    is       => 'ro',
    format   => 's',
    required => 1,
    doc      => 'Path to the perlweeklychallenge-club folder',
);

option 'dest_dir' => (
    is       => 'ro',
    format   => 's',
    required => 1,
    doc      => 'Path to output the restructured folders',
);

option 'extension_file' => (
    is       => 'ro',
    format   => 's',
    required => 1,
    doc      => 'Programming language extension json file',
);

1;
