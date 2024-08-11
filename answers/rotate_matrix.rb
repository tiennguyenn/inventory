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

# Other way, not working now.

# def rotate_matrix(matrix)
#   # Transpose the matrix
#   n = matrix.size
#   (0...n).each do |i|
#     (i...n).each do |j|
#       matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
#     end
#   end

#   # Reverse each row
#   (0...n).each do |i|
#     matrix[i].reverse!
#   end

#   matrix
# end

# def rotate_matrix(matrix)
#   p matrix
#   p matrix.reverse
#   p matrix.reverse.transpose
# end

