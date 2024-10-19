def rotate_matrix(matrix)
  return matrix if matrix.empty?

  n = matrix.size
  result = Array.new(n) { Array.new(n) }

  (0...n).each do |i|
    (0...n).each do |j|
      result[n - j - 1][i] = matrix[i][j]
    end
  end

  result
end

# Time complexity
# O(n^2)
# Space complexity
# O(n*n)

# Other way, using transpose and reverse
# def rotate_matrix(matrix)
#   n = matrix.size

#   # Reverse each row
#   (0...n).each do |i|
#     matrix[i].reverse!
#   end

#   # Transpose the matrix
#   (0...n).each do |i|
#     (i...n).each do |j|
#       matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
#     end
#   end

#   matrix
# end

# Using build-in methods
# def rotate_matrix(matrix)
#   n = matrix.size

#   flags = matrix.each {|row| row.size == n}
#   return false if flags.any?

#   matrix.each(&:reverse!).transpose
# end

