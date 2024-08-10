require_relative 'rotate_matrix.rb'

describe '#rotate_matrix' do
  it 'return empty array' do
    matrix = []
    result = rotate_matrix(matrix)
    expect(result).to eq([])
  end

  it 'return the same for 1x1 matrix' do
    matrix = [[1]]
    result = rotate_matrix(matrix)
    expect(result).to eq([[1]])
  end

  it 'rotates 2x2 matrix' do
    matrix = [
      [1,2],
      [3,4]
    ]
    result = rotate_matrix(matrix)
    expect(result).to eq([
      [2,4],
      [1,3]
    ])
  end

  it 'rotates 3x3 matrix' do
    matrix = [
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ]
    result = rotate_matrix(matrix)
    expect(result).to eq([
      [3,6,9],
      [2,5,8],
      [1,4,7]
    ])
  end

  it 'rotates 4x4 matrix' do
    matrix = [
      [5,2,6,14],
      [2,4,10,8],
      [13,3,6,7],
      [1,4,5,16]
    ]
    result = rotate_matrix(matrix)
    expect(result).to eq([
      [14,8,7,16],
      [6,10,6,5],
      [2,4,3,4],
      [5,2,13,1]
    ])
  end
end