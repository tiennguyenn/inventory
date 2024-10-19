class MyError < StandardError

end

class A
  attr_accessor :name

  def aaaa
    p 'aaaa'
    name = 'John'
    raise MyError if name
  end
end

A.new.aaaa