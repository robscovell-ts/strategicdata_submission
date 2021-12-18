use Dancer2;
use WordFinder;

set serializer => 'JSON';

get '/ping' => sub {
  "OK"
};

get '/wordfinder/:input' => sub {
  my $input = route_parameters->get('input');
  my ($error, $result) = WordFinder::find_words($input);
  if ($error) {
    status 400;
    return { 'error' => $error };
  }
  return $result;
};

start;
