# Return a reversed copy of the array
def reverse(an_array)
  an_array.reverse
end

# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
  a_string.downcase!
  char = a_string.split(//)
  frequencies = Hash.new(0)
  char.each {|char| frequencies[char] += 1}
  frequencies = frequencies.sort_by {|a, b| b }
  frequencies.each {|word, frequency| puts word + " " + frequency.to_s}
end

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
  a = an_array.grep(Integer)
  b = an_array.grep(Float)
  array_sum = a + b
  array_sum.inject(:+)
end

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
  # write your code here
end

# Uncomment each of these to test your functions
  puts reverse([3,6,'dog']).inspect
  puts histogram('The Quick brown fox').inspect
  puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
#  puts fizzbuzz.join("\n")
