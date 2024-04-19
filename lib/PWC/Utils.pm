package PWC::Utils;

use strict;
use warnings;
use 5.030;
use English qw( -no_match_vars );
use JSON::MaybeXS;

our $VERSION = '0.0.1';

sub read_data {
    my ($filename) = @_;

    my $json_text = do {
        open my $json_fh, '<:encoding(UTF-8', $filename
          or die "ERROR: Can't open $filename: $OS_ERROR\n";
        local $INPUT_RECORD_SEPARATOR = undef;
        my $data = <$json_fh>;
        close $json_fh
          or die "ERROR: Can't close $filename: $OS_ERROR\n";
        $data;
    };

    return JSON->new->allow_nonref->utf8(1)->decode($json_text);
}

1;
