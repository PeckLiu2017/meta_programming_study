def just_yield
  return yield if block_given?
end

top_level_variable = 1

just_yield do
  top_level_variable += 1
  local_to_block = 1
  puts local_to_block
end

# => 1
puts top_level_variable # => 2
puts local_to_block
# => block_local_vars_failure.rb:24:in `<main>':
# undefined local variable or method `local_to_block' for main:Object (NameError)
