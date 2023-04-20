# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def raiseIllegalTriangeError
  raise TriangleError, "illegal triangle given"
end


def triangle(a, b, c)
  # any 0, any negative
  if a <= 0 || b <= 0 || c <= 0
    raiseIllegalTriangeError 
  end
  # sum of 2 smaller is <= sum of max
  biggest = [a,b,c].max
  other_1, other_2 = [a,b,c].min(2)
  if other_1 + other_2 <= biggest
    raiseIllegalTriangeError
  end

  if a == b && b == c
    :equilateral
  elsif a == b || a == c || b == c
    :isosceles
  else
    :scalene
  end 
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
