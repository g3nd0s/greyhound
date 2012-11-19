#!/usr/bin/env python

KEY   = 8888888
LEFT  = 0
RIGHT = 10000000

# ----------------------------------------------------------------------------------------------- #
def binsearch( array, left, right, key ):
  m = 0

  while( left < right ):
    m = ( left + right ) / 2

    if ( key < array[m] ):
      right = m
    elif ( key > array[m] ):
      left = m + 1
    else:
      return m

# ----------------------------------------------------------------------------------------------- #

def main():
  array = []
  array = range(LEFT, RIGHT)

  print binsearch( array, LEFT, RIGHT, KEY )

if __name__=='__main__':
  main()