module MyEnumerable
  def my_all?
    my_each { |item| return false unless yield(item) }
    true
  end

  def my_any?
    my_each { |item| return true if yield(item) }
    false
  end

  def my_filter
    result = []
    my_each { |item| result << item if yield(item) }
    result
  end

  def my_each(&block)
    raise NotImplementedError, "You must implement the 'my_each' method"
  end
end

class MyList
  include MyEnumerable

  def initialize
    @list = []
  end

  def each(&block)
    @list.each(&block)
  end

  def <<(item)
    @list << item
  end

  def my_each(&block)
    @list.each(&block)
  end
end

list = MyList.new
list << 1
list << 2
list << 3
list << 4

puts(list.my_all? { |e| e < 5 })
puts(list.my_all? { |e| e > 5 })
puts(list.my_any? { |e| e == 2 })
puts(list.my_any? { |e| e == 5 })
puts(list.my_filter(&:even?))
