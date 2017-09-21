class Fixnum
  alias_method :old_plus, :+

  def +(value)
    self.old_plus(value).old_plus(value)
  end
end

puts "1+1=#{1+1}" #=> 3
puts "1+3=#{1+3}" #=> 7
