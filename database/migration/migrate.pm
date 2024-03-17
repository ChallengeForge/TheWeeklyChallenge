package Migration;

use JSON::Parse;
use strict;
use warnings;
use DBI;

sub connect_to_mysql {
  my ($host, $database, $user, $password) = @_;

  my $dbh = DBI->connect("DBI:mysql:$database:$host", $user, $password)
    or die "Couldn't connect to database: $DBI::errstr";

  return $dbh;
}

# Replace with your actual credentials
my $host = "localhost";
my $database = "mydatabase";
my $user = "username";
my $password = "password";

# Connect to the database
my $dbh = connect_to_mysql($host, $database, $user, $password);


my $json_text = '{
  "aaryan-r": "Aaryan Rastogi",
  "ap29600": "Andrea Piseri",
  "archargelod": "Archar Gelod",
  # ... (rest of the JSON data)
}';

my $json_parser = JSON::Parse->new;
my $guests_data = $json_parser->decode($json_text)
  or die "Error parsing JSON: " . $json_parser->error;














# Insert users into the database (assuming a table named 'users')
my $sql = "INSERT INTO users (user_name, full_name) VALUES (?, ?)";
my $sth = $dbh->prepare($sql);

foreach my $username (keys %$guests_data) {
  my $full_name = $guests_data->{$username};
  $sth->execute($username, $full_name)
    or die "Insert failed for user $username: $DBI::errstr";
}


# Disconnect from the database (shown for completeness)
$dbh->disconnect() or die "Disconnect failed: $DBI::errstr";

print "Successfully connected, inserted users, and disconnected\n";
