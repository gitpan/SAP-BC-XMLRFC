#!/usr/bin/perl -w

use strict;
use SAP::BC;
use Data::Dumper;

my $bc = SAP::BC->new('http://rooster.local.net:5555');

print Dumper $bc->SAP_systems();
print Dumper $bc->services();

