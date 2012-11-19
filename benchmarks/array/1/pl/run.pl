#!/usr/bin/env perl
use strict;

use constant
{
  KEY   => 8888888,
  LEFT  => 0,
  RIGHT => 10000000
};

# ----------------------------------------------------------------------------------------------- #
sub binsearch
{
  my ( $ref, $left, $right, $key ) = @_;
  my $m;
  
  while( $left < $right )
  { 
    $m = int(( $left + $right ) / 2);

    if( $key < $$ref[$m] )
      { $right = $m; }
    elsif( $key > $$ref[$m] )
      { $left = $m + 1; }
    else
      { return $m; }
  }
}
# ----------------------------------------------------------------------------------------------- #

main:
{
  my @array = (LEFT..RIGHT);

  print binsearch(\@array, LEFT, RIGHT, KEY);
}