package WordFinder;

sub find_words {
  my $input = shift;
  return ('Invalid Input', undef) if $input =~ /[\W\s]/;

  my @dictionary;
  open my $fh, '<', $ENV{'DICTIONARY_FILE'};
  while (<$fh>) {
    chomp;

    # I tend to think the following pattern is useful if there is a large
    # number of exclusionary conditions, for the sake of clarity.
    # It's not entirely relevent to a simple example like this but it's
    # how I normally work with a particuarly complex case analysis.
    next if length == 1;
    next if length > length($input);
    next if /[^$input]/;

    my $word = $_;
    for my $char(split '', $input) {
      s/$char//;
    }
    next if length;
    push @dictionary, $word;
  }
  close $fh;

  @dictionary = sort @dictionary;
  return (undef, \@dictionary);
}

1;
