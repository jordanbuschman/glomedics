use lib "~/Library/WebServer/Documents/glomedics";
use GlomedicsApp;

my $glomedics = GlomedicsApp->new(
	PARAMS => {
		tt_config => {
			INCLUDE_PATH => ".",
			PRE_PROCESS => 'header.html',
			POST_PROCESS => 'footer.html',
		},
		hw_string => "Hello world!",
	},
);

$glomedics->run();
