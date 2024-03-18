package Migration;

use strict;
use warnings;
use JSON::Parse qw(parse_json);
use DBI;
use Try::Tiny;
use Crypt::Eksblowfish::Bcrypt qw(bcrypt);

# Database configuration
my %config = (
    host     => 'localhost',
    database => 'pwc',
    user     => 'root',
    password => 'root'
);

my $data_source = "members.json";

# Connect to MySQL database
try {
    my $dbh = DBI->connect(
        "DBI:mysql:database=$config{database};host=$config{host}",
        $config{user},
        $config{password},
        {
            PrintError       => 0,
            RaiseError       => 1,
            AutoCommit       => 0,          # Disable autocommit
            FetchHashKeyName => 'NAME_lc'
        }
    ) or die "Connection error: $DBI::errstr";

    # Read JSON data from file
    open my $json_file, '<', $data_source or die "Error opening JSON file: $!";
    my $guests_data = parse_json($json_file);

    # Prepare SQL statement and insert guests
    my $sql =
"INSERT INTO users (user_name, user_fullname, user_type, user_password) VALUES (?, ?, ?, ?)";
    my $sth = $dbh->prepare($sql);

    for my $username ( keys %{$guests_data} ) {
        my $full_name = $guests_data->{$username};

        # Hash password using bcrypt
        my $hashed_password = bcrypt("password");

        try {
            $sth->execute( $username, $full_name, 2, $hashed_password );
            $dbh->commit();
        }
        catch {
            warn "Error inserting user $username: $_";
            $dbh->rollback();
        }
    }

    # Close connection
    $sth->finish;
    $dbh->disconnect;

    print "Successfully connected, inserted users, and disconnected\n";
}
catch {
    warn "Connection error: $_";
};
