# 把块传给另一个方法，用&操作符传递块，然后yield出结果就可以了。
def math(a, b)
  yield(a, b)
end

def do_math(a, b, &operation)
  math(a, b, &operation)
end

# puts do_math(2, 3){ |x, y| x * y }
puts do_math(2, 3) #=> wrong
