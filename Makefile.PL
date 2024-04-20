#!/usr/bin/env perl

use 5.030;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;
use Const::Fast;

const my $EUMM_VER => '6.46';

our $VERSION = '0.0.1';

WriteMakefile(
    NAME               => 'TheWeeklyChallenge',
    AUTHOR             => q{Mohammad Sajid Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/PWC.pm',
    LICENSE            => 'artistic_2',
    EXE_FILES          => [ 'scripts/datamigration' ],
    MIN_PERL_VERSION   => 5.030,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => '1.001014',
    },
    PREREQ_PM => {
        'JSON::MaybeXS'  => 0,
        'File::Basename' => '2.6',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'PWC-*' },
    (
        eval { ExtUtils::MakeMaker->VERSION($EUMM_VER) }
        ? (
            META_MERGE => {
                'meta-spec' => { version => 2 },
                provides    => {
                    'PWC' => {
                        file    => 'lib/PWC.pm',
                        version => '0.0.1',
                    },
                    'PWC::Controllers::About' => {
                        file    => 'lib/PWC/Controllers/About.pm',
                        version => '0.0.1',
                    },
                    'PWC::Controllers::Auth' => {
                        file    => 'lib/PWC/Controllers/Auth.pm',
                        version => '0.0.1',
                    },
                    'PWC::Controllers::FAQ' => {
                        file    => 'lib/PWC/Controllers/FAQ.pm',
                        version => '0.0.1',
                    },
                    'PWC::Controllers::Home' => {
                        file    => 'lib/PWC/Controllers/Home.pm',
                        version => '0.0.1',
                    },
                    'PWC::Controllers::PerlReview' => {
                        file    => 'lib/PWC/Controllers/PerlReview.pm',
                        version => '0.0.1',
                    },
                    'PWC::Controllers::RakuReview' => {
                        file    => 'lib/PWC/Controllers/RakuReview.pm',
                        version => '0.0.1',
                    },
                    'PWC::Controllers::Team' => {
                        file    => 'lib/PWC/Controllers/Team.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema' => {
                        file    => 'lib/PWC/Models/Schema.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::Challenge' => {
                        file    => 'lib/PWC/Models/Schema/Result/Challenge.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::Champion' => {
                        file    => 'lib/PWC/Models/Schema/Result/Champion.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::Contribution' => {
                        file => 'lib/PWC/Models/Schema/Result/Contribution.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::Group' => {
                        file    => 'lib/PWC/Models/Schema/Result/Group.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::InterviewQuestion' => {
                        file =>
                            'lib/PWC/Models/Schema/Result/IntrviewQuestion.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::InterviewResponse' => {
                        file =>
                            'lib/PWC/Models/Schema/Result/InterviewResponse.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::Language' => {
                        file    => 'lib/PWC/Models/Schema/Result/Language.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::Permission' => {
                        file    => 'lib/PWC/Models/Schema/Result/Permission.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::Role' => {
                        file    => 'lib/PWC/Models/Schema/Result/Role.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::Team' => {
                        file    => 'lib/PWC/Models/Schema/Result/Team.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::User' => {
                        file    => 'lib/PWC/Models/Schema/Result/User.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::UserType' => {
                        file    => 'lib/PWC/Models/Schema/Result/UserType.pm',
                        version => '0.0.1',
                    },
                    'PWC::Models::Schema::Result::Week' => {
                        file    => 'lib/PWC/Models/Schema/Result/Week.pm',
                        version => '0.0.1',
                    },
                    'PWC::Utils' => {
                        file    => 'lib/PWC/Utils.pm',
                        version => '0.0.1',
                    },
                    'PWC::Utils::DataMigration' => {
                        file    => 'lib/PWC/Utils/DataMigration.pm',
                        version => '0.0.1',
                    },
                    'PWC::Utils::DataMigration::Option' => {
                        file    => 'lib/PWC/Utils/DataMigration/Option.pm',
                        version => '0.0.1',
                    },
                },
                resources => {
                    repository => {
                        type => 'git',
                        url  =>
                            'https://github.com/ChallengeForge/TheWeeklyChallenge.git',
                        web =>
                            'https://github.com/ChallengeForge/TheWeeklyChallenge',
                    },
                },
            },
            )
        : ()
    ),
);
