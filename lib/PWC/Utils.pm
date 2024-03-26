package PWC::Utils;

use strict; use warnings;
use JSON;

sub read_data {
    my ($filename) = @_;

    my $json_text = do {
        open(my $json_fh, "<:encoding(UTF-8)", $filename)
            or die("Can't open $filename: $!\n");
        local $/;
        <$json_fh>
    };

    return JSON->new->allow_nonref->utf8(1)->decode($json_text);
}

1;