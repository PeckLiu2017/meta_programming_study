class C
  def initialize
    @x = 1
  end

  def my_method
    @x
  end
end

class D
  def twisted_method
    @y = 2
    C.new.instance_eval { "@x: #{@x}, @y: #{@y}" }
  end
end

puts D.new.twisted_method
# => @x: 1, @y:

# 把instance_eval换成instance_exec
class D
  def twisted_method
    @y = 2
    C.new.instance_exec(@y) { |y| "@x: #{@x}, @y: #{y}" }
  end
end

puts D.new.twisted_method
# => @x: 1, @y: 2
