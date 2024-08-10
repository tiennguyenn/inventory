require_relative 'palindrome.rb'

describe '#palindrome?' do
  it 'returns true for panlindromes' do
    expect(palindrome?('')).to be true
    expect(palindrome?('madam')).to be true
    expect(palindrome?('Madam')).to be true
    expect(palindrome?('12321')).to be true
    expect(palindrome?('nurses, run.')).to be true
  end

  it 'returns false for a non-palindrome' do
    expect(palindrome?('hello')).to be false
    expect(palindrome?('abcd12321')).to be false
  end
end