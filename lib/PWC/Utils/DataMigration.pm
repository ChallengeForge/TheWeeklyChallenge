package PWC::Utils::DataMigration;

use strict; use warnings;
use Moo;
use MooX::Options;
use File::Find qw(finddepth);
use File::Basename qw(basename);
use File::Find::Rule qw(rule);
use File::Copy::Recursive qw(dircopy);
use PWC::Utils;
use PWC::Utils::DataMigration::Option;

with 'PWC::Utils::DataMigration::Option';

sub run {
    my ($self) = @_;

    $self->fetch_contributions;
    $self->process_contributions;
}

sub fetch_contributions {
    my ($self) = @_;

    my $source_dir = $self->source_dir;
    my $restructure_folder = $self->dest_dir;

    if (! -e $restructure_folder) {
        mkdir $restructure_folder or die "Failed to create folder $restructure_folder: $!";
    }

    my $members_json_file = "$source_dir/members.json";
    my $members_hash_ref = PWC::Utils::read_data($members_json_file);
    my @member_nicks = keys %$members_hash_ref;

    my $programming_languages_extensions_file = "./programming_language_extensions.json";
    $self->{programming_languages_extensions_ref} = PWC::Utils::read_data($programming_languages_extensions_file);

    my $guests_json_file = "$source_dir/guests.json";
    my $guests_hash_ref = PWC::Utils::read_data($guests_json_file);
    my @guest_nicks = keys %$guests_hash_ref;

    my @nicks = (@member_nicks, @guest_nicks);

    $self->{nicks} = \@nicks;
}

sub process_contributions {
    my ($self) = @_;

    my $restructure_folder = $self->dest_dir;
    my @weekly_challenge_folders = rule->directory->maxdepth(1)->name(qr/challenge-\d{3}/)->in($self->source_dir);

    foreach my $nick (@{$self->{nicks}}) {
        if ($nick =~ /\//) {
            print "WARNING: $nick contains '/'";
        }

        my $member_folder = "$restructure_folder/$nick";

        if (! -e $member_folder) {
            mkdir $member_folder or die "Failed to create folder $member_folder: $!";
        }

        foreach my $weekly_challenge_folder (@weekly_challenge_folders) {
            my $member_weekly_challenge_folder = "$weekly_challenge_folder/$nick";

            if (-e $member_weekly_challenge_folder) {
                my @language_folders = rule->directory->maxdepth(1)->in($member_weekly_challenge_folder);

                shift(@language_folders);

                foreach my $language_folder (@language_folders) {
                    my $language_folder_name = basename($language_folder);

                    if (exists $self->{programming_languages_extensions_ref}{$language_folder_name}) {
                        my $language_exts = $self->{programming_languages_extensions_ref}{$language_folder_name};
                    
                        my $copy_language_folder = 0;

                        finddepth(
                            sub {
                                return if($_ eq '.' || $_ eq '..');
                                if (-f $_) {
                                    foreach my $ext (@$language_exts) {
                                        if ($_ =~ /$ext$/) {
                                            $copy_language_folder = 1;
                                            last;
                                        }
                                    }
                                }
                            },
                            $language_folder
                        );

                        if ($copy_language_folder) {
                            my $weekly_challenge = basename($weekly_challenge_folder);
                            if ($weekly_challenge !~ /challenge-(\d{3})/) {
                                die "Something bad happened";
                            }
                            my $new_member_weekly_challenge_folder = "$member_folder/w$1";
                            if (! -e $new_member_weekly_challenge_folder) {
                                mkdir $new_member_weekly_challenge_folder or die "Failed to create folder $new_member_weekly_challenge_folder: $!";
                                print "Created folder: $new_member_weekly_challenge_folder\n";
                            }
                            dircopy("$language_folder", "$new_member_weekly_challenge_folder/$language_folder_name") or die("$!\n");
                            print "Copied folder: $language_folder to $new_member_weekly_challenge_folder/$language_folder_name\n";
                        }
                    } else {
                        my $weekly_challenge = basename($weekly_challenge_folder);
                        if ($weekly_challenge !~ /challenge-(\d{3})/) {
                            die "Something bad happened";
                        }
                        my $new_member_weekly_challenge_folder = "$member_folder/w$1";
                        if (! -e $new_member_weekly_challenge_folder) {
                            mkdir $new_member_weekly_challenge_folder or die "Failed to create folder $new_member_weekly_challenge_folder: $!";
                            print "Created folder: $new_member_weekly_challenge_folder\n";
                        }
                        dircopy("$language_folder", "$new_member_weekly_challenge_folder/$language_folder_name") or die("$!\n");
                        print "Could not find $language_folder_name in programming_language_extensions.json, copying with no checks\n";
                        print "Copied folder: $language_folder to $new_member_weekly_challenge_folder/$language_folder_name\n";
                    }
                }
            }
        }
    }
}


1;