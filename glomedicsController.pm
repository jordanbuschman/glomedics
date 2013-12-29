package glomedicsApp;

use base 'CGI::Application';
use Template;

sub setup {
	my $self = shift;
	$self->run_modes(
		'mode_1' => 'index',
	);
	$self->start_mode('mode_1');
}

sub index {
	my $self = shift;
	$tt_config = $self->param('tt_config');
	my $tt = Template->new($tt_confg);
	$tt->process('index.tt2',
		{
			welcome => 'hello world!!!',
		}, \$html
	) || die $tt->error(), "\n";

	return $html;
}
