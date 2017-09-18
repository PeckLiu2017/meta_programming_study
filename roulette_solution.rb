class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
   "#{person} got #{number}"
  end
end

r = Roulette.new
puts r.bob


class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    super unless %w(Bob Frank Jack Peck).include?(person)
    number = 0
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
   "#{person} got #{number}"
  end
end

r = Roulette.new
puts r.bob
