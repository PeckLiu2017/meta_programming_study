def my_method(&the_proc)
	# p the_proc # 去掉&操作符，proc对象就又成了块,根据第四行的程序，得到#<Proc:0x007fc3e087cc78@proc_operation_one.rb:4>
  the_proc
end
p = my_method { |name| "Hello, #{name}!" }
# p = my_method
# => NilClass proc_operation_one.rb:6:in `<main>': undefined method `call' for nil:NilClass (NoMethodError)
# => Did you mean?  caller
puts p.class # => Proc
puts p.call("Bill") # => Hello, Bill!
