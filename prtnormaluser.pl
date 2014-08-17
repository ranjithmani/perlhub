#!/usr/bin/perl
#------------------------------------------------------------------
#This script is to list the normal user on a linux system
#I assume that the normaluser ids are between 500 and 1000
#
#
#
#
#
#------------------------------------------------------------------
#use strict;
#use warnings;
@user = `cat /etc/passwd | cut -f 1 -d :`;
@ids = `cat /etc/passwd | cut -f 3 -d :`;
chomp @user;
$length = @ids;
for ($i = 0 ; $i <= $length ; $i++)
{
if ( $ids[$i] >= 1000)
{
print "$user[$i]\n";
}
}

