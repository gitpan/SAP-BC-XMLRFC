#!/usr/bin/perl
use strict;
use SAP::BC::XMLRFC;

my $userid = '';
my $passwd = '';
my $server="http://rooster.local.net:5555";
my $service = 'test:ReadReport';

die "no report name supplied - eg. usage: $0 SAPLGRAP " unless $ARGV[0];

my $xmlrfc = new SAP::BC::XMLRFC( SERVER => $server,
				  USERID => $userid,
				  PASSWD => $passwd );

my $i = $xmlrfc->Iface( $service );

$i->Parm('PROGRAM')->value($ARGV[0]);

$xmlrfc->xmlrfc( $i );

print "Name:", $i->Parm('TRDIR')->structure->NAME, "\n";

map {print @{$_}, "\n"  } ( $i->Tab('QTAB')->rows );















