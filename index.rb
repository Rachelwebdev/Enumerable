module MyEnumerable
  def my_each
    for item in self
      yield(item)
    end
  end
end

class MyList
  include MyEnumerable

  def initialize
    @list = []
  end

  def each
    @list.my_each { |item| yield(item) }
  end
end
