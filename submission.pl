use lib 'lib/';
use Dancer2;
use WordFinder;

my $port = $ENV{'IS_DOCKER'} ? 80 : 8000;
set port => $port;

get '/ping' => sub {
  content_type 'text/plain';
  "OK";
};

get '/wordfinder/:input' => sub {
  my $input = route_parameters->get('input');
  my ($error, $result) = WordFinder::find_words($input);
  if ($error) {
    status 400;
    send_as JSON => { 'error' => $error, 'status' => 400 };
  }
  send_as JSON => $result;
};

start;
