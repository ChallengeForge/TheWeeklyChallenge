package PWC::Utils::DataMigration::Option;

use strict; use warnings;
use Moo::Role;
use MooX::Options;

option 'source_dir' => (is => 'ro', format => 's', required => 1, doc => 'Path to the perlweeklychallenge-club folder');
option 'dest_dir' => (is => 'ro', format => 's', required => 1, doc => 'Path to output the restructured folders');

1;