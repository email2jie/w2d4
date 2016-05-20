require_relative 'MyStack'

class MinMaxStackQueue
  def initialize
    @push_store = MyStack.new
    @pop_store = MyStack.new

  end

  def enqueue(el)
    @push_store.push(el)

  end

  def dequeue
    if @pop_store.empty? && !@push_store.empty?
      reverse_store(@push_store, @pop_store)
    end

    @pop_store.pop unless @pop_store.empty?

  end

  def reverse_store(from, to)

    from.size.times do
      to.push(from.pop)
    end
  end

  def min
    min_from_push = @push_store.min
    min_from_pop = @pop_store.min
    if min_from_push.nil? || min_from_pop.nil?
      return min_from_pop || min_from_push
    else
      return [min_from_pop, min_from_push].min
    end
  end

  def max
    max_from_push = @push_store.max
    max_from_pop = @pop_store.max
    if max_from_push.nil? || max_from_pop.nil?
      return max_from_pop || max_from_push
    else
      return [max_from_pop, max_from_push].max
    end

  end

  def size
    @push_store.size
  end

  def empty?
    @push_store.empty?
  end
end
