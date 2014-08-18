#!/usr/bin/perl
#------------------------------------------------------------------
#This script is to simulate adding variables to a array 
#USAGE : perl arrayin.pl
#------------------------------------------------------------------
@week=" ";
$i=0;
print "enter the array length : ";
$l=<STDIN>;
chomp ($l);
while ($i ne $l)
      {
        print "Enter the $i element of the array:";
        $ele=<STDIN>;
        chomp ($ele);
        @week=(@week,$ele);
        ++$i;
      }
 print "\033[2J";    #clear the screen
 print "\033[0;0H"; #jump to 0,0
print "Array list:\n";
foreach (@week)
        {
        print "$_\n";
        }
