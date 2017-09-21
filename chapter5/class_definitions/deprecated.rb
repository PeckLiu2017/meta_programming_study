class Book
  def title
    puts "您使用了title方法"
  end

  def subtitle
    puts "您使用了subtitle方法"
  end

  def lend_to(user)
    puts "Lending to #{user}"
  end

  def self.deprecate(old_method, new_method)
    define_method(old_method) do |*args, &block|
      warn "Warning:#{old_method} is deprecate. Use #{new_method}()"
      send(new_method, *args, &block)
    end
  end

  deprecate :GetTitle, :title
  deprecate :LEND_TO_USER, :lend_to
  deprecate :title2, :subtitle
end

b = Book.new
b.LEND_TO_USER("Bill") #=>
#  Warning: LEND_TO_USER() is deprecated. Use lend_to().
#  Lending to Bill
