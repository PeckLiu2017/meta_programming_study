class C
  def m
    m = 1
  end
end

singleton_class = class << C
  def n
    n = 1
  end

  self
end

puts singleton_class.class
puts singleton_class.superclass
puts singleton_class.instance_methods.join(',')
puts singleton_class.instance_methods(false)

singleton_class.new
