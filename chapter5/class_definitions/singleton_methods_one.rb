# class C
#   def a_method
#     'C#a_method()'
#   end
# end
#
# class D < C; end
#
# obj = D.new
# puts obj.a_method       #=>  "C#a_method()"
#
# class << obj
#   def a_singleton_method
#     'obj#a_singleton_method()'
#   end
# end
#
# puts obj.singleton_class.superclass  #=>  "D"

class C
  class << self
    def a_class_method
      'C#a_class_method()'
    end
  end
end

class D < C; end

# obj = D.new
# puts obj.a_method       #=>  "C#a_method()"

# class << obj
#   def a_singleton_method
#     'obj#a_singleton_method()'
#   end
# end

puts C.singleton_class #=>  #<Class:C>
puts D.singleton_class #=>  #<Class:D>
puts C.singleton_class.superclass #=>  #<Class:Object>
puts C.superclass.singleton_class #=>  #<Class:Object>
puts D.singleton_class.superclass #=>  #<Class:C>

puts D.a_class_method #=> C#a_class_method()
