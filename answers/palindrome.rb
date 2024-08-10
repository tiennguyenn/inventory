
# Using Ruby's build-in method
# def palindrome?(string)
#   cleaned_string = string.downcase.gsub(/[^a-z0-9]/i, '')
#   cleaned_string == cleaned_string.reverse
# end


# def palindrome?(string)
#   # Convert the string to lowercase for case-insensitive comparison
#   cleaned_string = string.downcase.gsub(/[^a-z0-9]/i, '')

#   # Compare characters from the beginning and end, moving inwards
#   left = 0
#   right = cleaned_string.length - 1
#   while left < right
#     return false unless cleaned_string[left] == cleaned_string[right]
#     left += 1
#     right -= 1
#   end

#   true
# end

def palindrome?(string)
  cleaned_string = string.downcase.gsub(/[^a-z0-9]/i, '')
  length = cleaned_string.length

  (0...length / 2).each do |i|
    return false unless cleaned_string[i] == cleaned_string[length - i - 1]
  end
  true
end