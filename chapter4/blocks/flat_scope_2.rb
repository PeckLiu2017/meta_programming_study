my_var = "Success"
MyClass = Class.new do
puts "# 你希望在这里打印 my_var = #{my_var}"
  define_method :my_method do
    puts "# ..还有这里 my_var = #{my_var}"
  end
end

mc = MyClass.new
puts mc.my_method
