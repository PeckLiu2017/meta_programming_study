require './data_source.rb'
class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send "get_#{name}_info", @id
      price = @data_source.send "get_#{name}_price", @id
      result = "#{name.capitalize}: #{info} #{price}"
      return "#{result}" if price >= 100
    end
  end

  define_component :mouse
  define_component :cpu
  define_component :keyboard
end


computer = Computer.new(2,DS.new)
puts computer.mouse
puts computer.cpu
puts computer.keyboard
