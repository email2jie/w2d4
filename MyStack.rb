class MyStack

  def initialize
    @store = []
  end

  def pop
    temp = @store.pop


    temp[0]
  end

  def min
    return nil if empty?
    @store.last[1]
  end

  def max
    return nil if empty?
    @store.last[2]
  end

  def push(el)


    temp_min = [el, min || el].min
    temp_max = [el, max || el].max

    @store << [el, temp_min, temp_max]
  end

  def peek
    @store.last
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end
end
