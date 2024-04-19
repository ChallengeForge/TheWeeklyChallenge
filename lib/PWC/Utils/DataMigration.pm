package PWC::Utils::DataMigration;

use strict;
use warnings;
use 5.030;
use English qw( -no_match_vars );
use Moo;
use MooX::Options;
use File::Find            qw(finddepth);
use File::Basename        qw(basename);
use File::Find::Rule      qw(rule);
use File::Copy::Recursive qw(dircopy);
use PWC::Utils;
use PWC::Utils::DataMigration::Option;

our $VERSION = '0.0.1';

with 'PWC::Utils::DataMigration::Option';

sub run {
    my ($self) = @_;

    $self->fetch_contributions;
    $self->process_contributions;

    return;
}

sub fetch_contributions {
    my ($self) = @_;

    my $source_dir     = $self->source_dir;
    my $dest_folder    = $self->dest_dir;
    my $extension_file = $self->extension_file;

    if ( !-e $dest_folder ) {
        mkdir $dest_folder
          or die "ERROR: Can't create folder $dest_folder: $OS_ERROR\n";
    }

    my $members_json_file = "$source_dir/members.json";
    my $members_hash_ref  = PWC::Utils::read_data($members_json_file);
    my @member_nicks      = keys %{$members_hash_ref};

    $self->{extension_ref} = PWC::Utils::read_data($extension_file);

    my $guests_json_file = "$source_dir/guests.json";
    my $guests_hash_ref  = PWC::Utils::read_data($guests_json_file);
    my @guest_nicks      = keys %{$guests_hash_ref};

    my @nicks = ( @member_nicks, @guest_nicks );

    $self->{nicks} = \@nicks;

    return;
}

sub process_contributions {
    my ($self) = @_;

    my $dest_folder = $self->dest_dir;

    if ( !-e $dest_folder ) {
        mkdir $dest_folder
          or die "ERROR: Can't create folder $dest_folder: $OS_ERROR\n";
    }

    my $rule_directory = rule->directory->maxdepth(1);
    my @weekly_folders =
      $rule_directory->name(qr/challenge-\d{3}/mxs)->in( $self->source_dir );

    foreach my $nick ( @{ $self->{nicks} } ) {
        if ( $nick =~ m/\//mxs ) {
            print "WARN: $nick contains /";
        }

        my $member_new_folder = "$dest_folder/$nick";

        if ( !-e $member_new_folder ) {
            mkdir $member_new_folder
              or die
              "ERROR: Can't create folder $member_new_folder: $OS_ERROR\n";
        }

        foreach my $folder (@weekly_folders) {
            my $member_folder = "$folder/$nick";

            if ( -e $member_folder ) {
                my @lang_folders =
                  rule->directory->maxdepth(1)->in($member_folder);

                shift @lang_folders;

                foreach my $lang_folder (@lang_folders) {
                    my $lang_folder_name = basename($lang_folder);

                    if ( exists $self->{extension_ref}->{$lang_folder_name} ) {
                        my $lang_ext =
                          $self->{extension_ref}->{$lang_folder_name};

                        my $copy_lang_folder = 0;

                        finddepth(
                            sub {
                                return if ( $_ eq q{.} || $_ eq q{..} || -d );

                                foreach my $ext ( @{$lang_ext} ) {
                                    if (/$ext$/xms) {
                                        $copy_lang_folder = 1;
                                        last;
                                    }
                                }
                            },
                            $lang_folder,
                        );

                        if ($copy_lang_folder) {
                            _process_folder( $folder, $member_folder,
                                $lang_folder, );
                        }
                    }
                    else {
                        _process_folder( $folder, $member_folder,
                            $lang_folder, );

                        print "Could not find $lang_folder_name in "
                          . q{programming_language_extensions.json,}
                          . "{copying with no checks\n";
                    }
                }
            }
        }
    }

    return;
}

sub _process_folder {
    my ( $folder, $member_folder, $lang_folder ) = @_;

    my $weekly_folder    = basename($folder);
    my $lang_folder_name = basename($lang_folder);

    if ( $weekly_folder !~ /challenge-(\d{3})/mxs ) {
        die "ERROR: Something bad happened.\n";
    }

    my $new_member_folder = "$member_folder/w$1";
    if ( !-e $new_member_folder ) {
        mkdir $new_member_folder
          or die qq{ERROR: Can't create folder $new_member_folder: $OS_ERROR\n};

        print "Created folder: $new_member_folder\n";
    }

    dircopy( "$lang_folder", "$new_member_folder/$lang_folder_name" )
      or die "ERROR: $OS_ERROR\n";

    print "Copied folder: $lang_folder to "
      . "$new_member_folder/$lang_folder_name\n";

    return;
}

1;
