use Dancer2;
use WordFinder;

set serializer => 'JSON';

get '/ping' => sub {
  "OK"
};

get '/wordfinder/:input' => sub {

  my $input = route_parameters->get('input');
  my ($error, $result) = WordFinder::find_words($input);
  return { 'error' => $error } if $error;
  return $result;
};

start;
