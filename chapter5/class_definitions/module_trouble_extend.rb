module MyModule
  def my_method; "Hello"; end
end

obj = Object.new
obj.extend MyModule
puts obj.my_method  #=> "Hello"

class MyClass
  extend MyModule
end

puts MyClass.my_method  #=> "Hello"
