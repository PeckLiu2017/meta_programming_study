class CleanRoom
  def current_temperature
    19
  end
end

cr = CleanRoom.new
cr.instance_eval do
  if current_temperature < 20
    puts "wear jacket"
  end
end
