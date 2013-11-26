def for_each(array, &code)
  count = array.count
  count.times do |n|
    code.call(array[n])
  end
end

a = [1, 5, 8, 0]

# Print the squares of each item
for_each a do |item|
  puts item * item
end
