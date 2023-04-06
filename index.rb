require_relative 'my_list'

list = MyList.new

list << 1
list << 2
list << 3
list << 4

# Test #all?
puts(list.my_all? { |e| e < 5 })
puts(list.my_all? { |e| e > 5 })

# Test #any?
puts(list.my_any? { |e| e == 2 })
puts(list.my_any? { |e| e == 5 })

# Test #filter
puts(list.my_filter(&:even?))
