# What is a Palindrome?

# A palindrome is a word, phrase, number, or any other sequence of characters
# that reads the same forward and backward
# (ignoring spaces, punctuation, and capitalization).
# For example, the words "racecar" and "madam" are palindromes.

# Using Ruby's build-in method
# def palindrome?(string)
#   cleaned_string = string.downcase.gsub(/[^a-z0-9]/i, '')
#   cleaned_string == cleaned_string.reverse
# end

# Iterate a half of string
def palindrome?(string)
  cleaned_string = string.downcase.gsub(/[^a-z0-9]/i, '')
  length = cleaned_string.length

  (0...length / 2).each do |i|
    return false unless cleaned_string[i] == cleaned_string[length - i - 1]
  end
  true
end

O(n/2) O(n)
O(1)

# Using 2 poiters left and right
# def palindrome?(string)
#   cleaned_string = string.downcase.gsub(/[^a-z0-9]/i, '')

#   left = 0
#   right = cleaned_string.length - 1
#   while left < right
#     return false unless cleaned_string[left] == cleaned_string[right]
#     left += 1
#     right -= 1
#   end

#   true
# end

# class String
#   def palindrome?
#     cleaned_string = self.downcase.gsub(/[^a-z0-9]/i, '')
#     n = self.size
#     (0...n/2).each do |i|
#       return false unless cleaned_string[i] == cleaned_string[n-i-1]
#     end
#     true
#   end
# end

# p "madam".palindrome?
# p "hello".palindrome?