# Are they the same?
#
# Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities.
# "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

# Examples
# Valid arrays
# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

# comp(a, b) returns true
# because in b
#   121 is the square of 11,
#   14641 is the square of 121,
#   20736 the square of 144,
#   361 the square of 19,
#   25921 the square of 161, and so on.
# It gets obvious if we write b's elements in terms of squares:

# a = [121, 144, 19, 161, 19, 144, 19, 11]
# b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

class Array
  # My Answer
  def comp_same?(multipled_array)
    self.all?{ |element| multipled_array.include?(element ** 2) }
  end

  # Best Answer
  def best_comp_same?(multipled_array)
    self.nil? || multipled_array.nil? ? false : self.sort.map { |v| v ** 2} == multipled_array.sort
  end
end

p [121, 144, 19, 161, 19, 144, 19, 11].comp_same?([121, 14641, 20736, 361, 25921, 361, 20736, 361])
