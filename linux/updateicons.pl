#!/usr/bin/perl -w
#
# update geocache icons
#
# $RCSfile: updateicons.pl,v $
# $Revision: 1.1 $
# $Date: 2008/09/14 18:48:45 $
#
# $Log: updateicons.pl,v $
# Revision 1.1  2008/09/14 18:48:45  real
# Initial revision
#

open(F, "</tmp/teil2.txt") or die("Can't open file!");
my @zeilen = <F>;
close(F);

open(F, ">/tmp/teil3.txt") or die("Can´t open file");

foreach (@zeilen)
{
  $line = $_;
  
  $line =~ s/\tTraditional Cache\tTrue$/\t Custom 0/;
  $line =~ s/\tMulti-cache\tTrue$/\t Custom 2/;
  $line =~ s/\tUnknown Cache\tTrue$/\t Custom 4/;
  $line =~ s/\tEvent [Cc]ache\tTrue$/\t Custom 14/;
  $line =~ s/\tVirtual [Cc]ache\tTrue$/\t Custom 10/;
  $line =~ s/\tWebcam Cache\tTrue$/\t Custom 13/;
  $line =~ s/\tEarthcache\tTrue$/\t Custom 8/;
  $line =~ s/\tCache In Trash Out Event\tTrue$/\t Custom 9/;
  $line =~ s/\tLetterbox Hybrid\tTrue$/\t Custom 6/;
  $line =~ s/\tLocationless (Reverse) Cache\tTrue$/\t Custom 10/;
  $line =~ s/\tProject APE Cache\tTrue$/\t Custom 10/;
  $line =~ s/\tMega-Event Cache\tTrue$/\t Custom 15/;

  $line =~ s/\tTraditional Cache\tFalse$/\t Custom 1/;
  $line =~ s/\tMulti-cache\tFalse$/\t Custom 3/;
  $line =~ s/\tUnknown Cache\tFalse$/\t Custom 5/;
  $line =~ s/\tEvent [Cc]ache\tFalse$/\t Custom 14/;
  $line =~ s/\tVirtual [Cc]ache\tFalse$/\t Custom 10/;
  $line =~ s/\tWebcam Cache\tFalse$/\t Custom 13/;
  $line =~ s/\tEarthcache\tFalse$/\t Custom 8/;
  $line =~ s/\tCache In Trash Out Event\tFalse$/\t Custom 9/;
  $line =~ s/\tLetterbox Hybrid\tFalse$/\t Custom 7/;
  $line =~ s/\tLocationless (Reverse) Cache\tFalse$/\t Custom 10/;
  $line =~ s/\tProject APE Cache\tFalse$/\t Custom 10/;
  $line =~ s/\tMega-Event Cache\tFalse$/\t Custom 15/;

  print F "$line";
}

close(F);