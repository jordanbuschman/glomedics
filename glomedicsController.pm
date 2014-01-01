#!/usr/bin/perl

package glomedicsController;
use base 'CGI::Application';

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

	print "Content-type: text/html\n\n";

	my $vars = {};
	
	my $tt = Template->new();
	$tt->process('index.tt2', $vars) || die $tt->error(), "\n";

	exit;
}

1;
