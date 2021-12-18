use WordFinder;
use Test::More tests => 7;

my ($error, $result);

my $good_input = 'dgo';
my $bad_input = ' d g o';

($error, $result) = WordFinder::find_words($bad_input);
ok ($error eq 'Invalid Input', 'Validation works');

($error, $result) = WordFinder::find_words($good_input);
ok ($error == undef, 'Validation works');
ok ($result->[0] eq 'do', 'First word correct');
ok ($result->[1] eq 'dog', 'Second word correct');
ok ($result->[2] eq 'go', 'Third word correct');
ok ($result->[3] eq 'god', 'Fourth word correct');

ok (scalar @{$result} == 4, 'Result vector is the right length');
