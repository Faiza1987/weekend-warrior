def hello_world(name = "")
  if name.empty?
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end
   # OR with Ternary
   
  # return name.empty? ? "Hello, World!" : "Hello, #{name}!"


end

# puts hello_world(name = "Alice")
# puts hello_world(name = "Bob")
# puts hello_world(name = "")
# puts hello_world()