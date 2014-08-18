#!/usr/bin/perl
#---------------------------------------------------------------------------------------------------------
#This script is used to filter the ip address and hostnames(usually all strings!!) from a given file
#USAGE : perl ipcheck.pl <file>
#EXAMPLE : perl ipcheck.pl weblog.txt
#---------------------------------------------------------------------------------------------------------
while (<>)
 {
    if (/(\d+\.\d+\.\d+\.\d+)/)
      {
       @ip=(@ip,$_);
      }
    else
        {
        @host=(@host,$_)
        }
}
print "IP Address\n";
foreach (@ip)
        {
        print "$_";
        }
print "Host Name\n";
foreach (@host)
        {
        print "$_";
        }
