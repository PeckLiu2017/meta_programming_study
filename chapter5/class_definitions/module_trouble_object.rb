module MyModule
  def my_method; "Hello"; end
end

obj = Object.new

class << obj
  include MyModule
end

puts obj.my_method  #=> "Hello"
puts obj.singleton_methods  #=> "[:my_method]"
