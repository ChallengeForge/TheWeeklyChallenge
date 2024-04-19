package PWC::Models::Schema::Result::InterviewQuestion;

use strict;
use warnings;

use 5.030;
use base qw/DBIx::Class::Core/;

our $VERSION = '0.0.1';

__PACKAGE__->table('interview_questions');
__PACKAGE__->add_columns(
    question_id => {
        data_type         => 'integer',
        is_auto_increment => 1,
    },
    question_text => {
        data_type   => 'varchar',
        size        => 255,
        is_nullable => 0,
    },
    is_active => {
        data_type   => 'integer',
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key('question_id');

1;
