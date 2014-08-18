#!/usr/bin/perl -W
#----------------------------------------------------------------------------------------------- 
#This script will create a tcp server at given port
#USAGE: TCPserver.pl <port>
#EXAMPLE : TCPserver.pl 1440
#----------------------------------------------------------------------------------------------
use strict;
use IO::Socket::INET;
my $port = shift ||  die "[!]no port given\n";
my $socket = IO::Socket::INET->new(
	LocalPort	=> $port,
	Proto		=> 'tcp',
	Listen 		=> SOMAXCONN ) || die "[!] ca not establish socket..\n";
	print "Listening for connctions on $port\n";
while (my $client = $socket->accept)
	{
	my $addr = gethostbyaddr($client->peeraddr, AF_INET);
	my $port = $client->peerport;
	while (<$client>)
		{
		print "[client:$port] $_";
		print $client "$.:$_";
		}
	close $client || die "[!] connction unable to close....\n";
	die "[!]can not connect $!\n";
	}
