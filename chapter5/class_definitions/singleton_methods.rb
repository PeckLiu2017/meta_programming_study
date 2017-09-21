# 这需要在irb中执行,@str作为main的实例变量
@str = "WAR3"
def @str.title?    # 带问号返回true或false
	self.upcase == self
end

puts @str.title?     #  => true
puts @str.methods.grep(/title?/)  #  => ["title?"]
