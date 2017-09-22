# user_input = "User input: #{gets()}"
# puts user_input.tainted?
user_input = "User input: #{ARGV[0]}"
puts user_input.tainted?
