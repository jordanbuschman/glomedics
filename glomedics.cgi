#!/usr/bin/perl

package glomedics;
use CGI::Carp qw( fatalsToBrowser warningsToBrowser );
use glomedicsController;

my $glomedics = glomedicsController->new();
$glomedics->run();

1;
