package glomedicsApp;

use base 'CGI::Application';
use Template;

sub setup {
	my $self = shift;
	$self->run_modes(
		'mode_1' => 'welcome',
	);
	$self->start_mode('mode_1');
	$self->mode_param('rm');
}
