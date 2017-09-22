# class MyClass
#   attr_accessor :a
# end

# obj = MyClass.new
# obj.a = 2
# puts obj.a #=> 2

# class MyClass; end
# class MyClass1; end
#
# class Class
#   attr_accessor :b
# end
#
# MyClass.b = 42
# puts MyClass.b #=> 42
#
# MyClass1.b = 42
# puts MyClass1.b #=> 42

class MyClass
  class << self
    attr_accessor :c
  end
end

MyClass.c = 'It works!'
puts MyClass.c #=> 42
class MyClass1; end
MyClass1.c = 'It works!'
puts MyClass1.c #=> 42
