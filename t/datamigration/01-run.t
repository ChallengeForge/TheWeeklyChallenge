#!/usr/bin/perl

use strict;
use warnings FATAL => 'all';
use Test::More tests => 1;
use File::Find::Rule qw(rule);

use lib ("lib");

use PWC::Utils;
use PWC::Utils::DataMigration;

my $source_dir = "../perlweeklychallenge-club/"; # path to perlweeklychallenge-club project folder
my $dest_dir = "restructure";

PWC::Utils::DataMigration->new({ source_dir => $source_dir, dest_dir => $dest_dir })->run;

my %unique_nicks = ();

my $members_json_file = "$source_dir/members.json";
my $members_hash_ref = PWC::Utils::read_data($members_json_file);
my @member_nicks = keys %$members_hash_ref;

my $guests_json_file = "$source_dir/guests.json";
my $guests_hash_ref = PWC::Utils::read_data($guests_json_file);
my @guest_nicks = keys %$guests_hash_ref;

my @all_nicks = (@member_nicks, @guest_nicks);

foreach my $nick (@all_nicks)
{
    $unique_nicks{$nick} = 1;
}

my $unique_nicks_count = keys %unique_nicks;

my @member_folders = rule->directory->maxdepth(1)->in($dest_dir);

my $member_folders_count = @member_folders - 1; # exclude containing folder

ok( $unique_nicks_count == $member_folders_count );