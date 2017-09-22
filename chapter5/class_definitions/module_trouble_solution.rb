module MyModule
  def my_method; "Hello"; end
end

class MyClass
  class << self
    include MyModule
  end
end

puts MyClass.my_method  #=> "Hello"
