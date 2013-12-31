#!/usr/bin/perl

package glomedicsController;
use base 'CGI::Application';
use lib '/Users/Jordan/Sites/glomedics';

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

	my $config = {
		PRE_PROCESS => 'header.tt2',
		POST_PROCESS => 'footer.tt2',
	};

	my $vars = {
		welcome => 'Hello world!!!',
	};
	
	my $tt = Template->new($config);
	$tt->process('index.tt2') || die $tt->error(), "\n";
}

1;
