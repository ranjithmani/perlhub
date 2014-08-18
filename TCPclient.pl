#!/usr/bin/perl -W
#-----------------------------------------------------------------------------------
#This program is to create TCP client which will connect to a exsisting TCPserver 
#USAGE : TCPclient.pl <server> <port>
#EXAMPLE : TCPclient.pl localhost 1440(if the server is started @1440 port)
#----------------------------------------------------------------------------------
use strict;
use IO::Socket::INET;
my $server = shift;
my $port = shift ;
my $socket = IO::Socket::INET->new(
	 	PeerAddr	=> $server,
		PeerPort	=> $port,
		Proto		=> 'tcp' ) || die "[!] can not connect to $server\n";
		print "Establishing connction to $server:$port\n";
		while (<STDIN>)
			{
			print $socket $_;
			print scalar <$socket>;
			}
			close $socket || die "[!] can not close connection\n";
