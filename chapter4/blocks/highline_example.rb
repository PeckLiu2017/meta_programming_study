class Highline
  def ask(tips, &block)
    la = block
    puts la
  end
end

hl = Highline.new
# friends = hl.ask("friends?", lambda{ |s| s.split(',') })
# puts "You are friends with: #{friends.inspect} "
hl.ask
