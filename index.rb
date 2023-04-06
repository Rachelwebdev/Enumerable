require_relative 'my_list'

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.my_all? { |e| e < 5 })
puts(list.my_all? { |e| e > 5 })

# Test #any?
puts(list.my_any? { |e| e == 2 })
puts(list.my_any? { |e| e == 5 })

# Test #filter
puts(list.my_filter(&:even?))


require_relative 'my_array'

array = MyArray.new([1, 2, 3])

puts array.my_all? { |item| item > 0 } 
puts array.my_any? { |item| item == 4 } 
puts array.my_filter { |item| item > 1 } 
puts(list.my_filter(&:even?))