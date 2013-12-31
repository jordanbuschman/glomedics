#!/usr/bin/perl

package glomedicsController;
use base 'CGI::Application';
#use lib '/Users/Jordan/Sites/glomedics';
use lib '/Library/WebServer/CGI-Executables/glomedics';

use strict;
use warnings;
use Template;

sub setup {
	my $self = shift;
	$self->run_modes(
		'mode_1' => 'index',
	);
	$self->start_mode('mode_1');
	$self->mode_param('rm');
}

sub index {
	my $self = shift;
	my $tt_config = $self->param('tt_config');
	my $tt = Template->new($tt_config);
	$tt->process('index.tt2',
	 	{
			welcome => 'hello world!!!',
		}
	) || die $tt->error(), "\n";

	return $tt;
}

1;
