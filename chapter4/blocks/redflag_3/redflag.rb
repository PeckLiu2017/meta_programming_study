# def event(description)
#   puts "ALERT: #{description} " if yield
# end
#
# def setup
#   yield
# end

def event(description, &block)
  @events << {:description => description, :condition => block }
end

def setup(&block)
  @setups << block
end

@events = []
@setups = []
load 'events.rb'

@events.each do |event|
  @setups.each do |setup|
    setup.call
  end
  puts "ALERT: #{event[:description]} " if event[:condition].call
end
