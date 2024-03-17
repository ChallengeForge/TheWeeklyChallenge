package Migration;

use JSON::Parse;
use strict;
use warnings;
use DBI;
use DBI::DBD;

sub connect_to_mysql {
  my ($host, $database, $user, $password) = @_;
    
  my $dbh = DBI->connect("DBI:mysql:$database:$host", $user, $password)
    or die "Couldn't connect to database: $DBI::errstr";

  return $dbh;
}

# Replace with your actual credentials
my $host = "localhost";
my $database = "pwc";
my $user = "root";
my $password = "root";

# Connect to the database
my $dbh = connect_to_mysql($host, $database, $user, $password);


my $json_text = '{
    "aaryan-r"        : "Aaryan Rastogi",
    "ap29600"         : "Andrea Piseri",
    "archargelod"     : "Archar Gelod",
    "asherbhs"        : "Asher Harvey-Smith",
    "aviral-goel"     : "Aviral Goel",
    "conor-hoekstra"  : "Conor Hoekstra",
    "daniel-aberger"  : "Daniel Aberger",
    "ealvar3z"        : "E. Alvarez",
    "eric-cheung"     : "Eric Cheung",
    "frankivo"        : "Frank Oosterhuis",
    "henry-wong"      : "Henry Wong",
    "joaofel"         : "Joao Felipe",
    "karishma"        : "Karishma Rajput",
    "macy-ty"         : "Macy TY",
    "memark"          : "Magnus Markling",
    "mfoda"           : "Mohammad Foda",
    "michael-dicicco" : "Michael DiCicco",
    "orestis-zekai"   : "Orestis Zekai",
    "probablyfine"    : "Alex Wilson",
    "geekruthie"      : "Ruth Holloway",
    "shawak"          : "Shawak",
    "simon-dueck"     : "Simon Dueck",
    "szabgab"         : "Gabor Szabo",
    "wg-romank"       : "Roman Kotelnikov",
    "ziameraj16"      : "Mohammad Meraj Zia"
}';

my $json_parser = JSON::Parse->new;
my $guests_data = $json_parser->decode($json_text)
  or die "Error parsing JSON: " . $json_parser->error;














# Insert users into the database (assuming a table named 'users')
my $sql = "INSERT INTO users (user_name, user_fullname, user_type, user_password) VALUES (?, ?, ?, ?)";
my $sth = $dbh->prepare($sql);

foreach my $username (keys %$guests_data) {
  my $full_name = $guests_data->{$username};
  my $user_type = 1;
  my $password = "password";
  $sth->execute($username, $full_name)
    or die "Insert failed for user $username: $DBI::errstr";
}


# Disconnect from the database (shown for completeness)
$dbh->disconnect() or die "Disconnect failed: $DBI::errstr";

print "Successfully connected, inserted users, and disconnected\n";
