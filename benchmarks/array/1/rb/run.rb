#!/usr/bin/env ruby

KEY   = 8888888
LEFT  = 0
RIGHT = 10000000

# ----------------------------------------------------------------------------------------------- #
def binsearch( array, left, right, key )
  m = nil

  while left <= right do
    m = ( left + right ) / 2
    
    if key < array[m]
      right = m
    elsif key > array[m]
      left = m + 1
    else
      return m
    end 
  end

end
# ----------------------------------------------------------------------------------------------- #

array = Array.new
array = (LEFT .. RIGHT).to_a

puts binsearch( array, LEFT, RIGHT, KEY)