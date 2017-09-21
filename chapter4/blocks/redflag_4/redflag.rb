lambda {
	setups = []
	events = []

	Kernel.send :define_method, :setup do |&block|
		setups << block
	end

	Kernel.send :define_method, :event do |description, &block|
		events << {:description => description, :condition => block }
	end

  Kernel.send :define_method, :each_setup do |&block|
		setups.each do |setup|
      p block #=> #<Proc:0x007fef28853d28@redflag.rb:34>
      p setup #=> #<Proc:0x007fc3340247d0@events.rb:1>
      p block.call setup #=> 100
			block.call setup
		end
	end

	Kernel.send :define_method, :each_event do |&block|
		events.each do |event|
			block.call event
		end
	end

}.call

load 'events.rb'

each_event do |event|
  p event #=> {:description=>"the sky is falling", :condition=>#<Proc:0x007fbd7c92be40@events.rb:11>}
  each_setup do |setup|
    p setup #=> #<Proc:0x007fbd7c928088@events.rb:1>...
    setup.call
  end
  puts "ALERT: #{event[:description]} " if event[:condition].call
end
