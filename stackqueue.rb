require_relative 'MyStack'
class StackQueue
  def initialize
    @push_store = MyStack.new
    @pop_store = MyStack.new
  end

  def enqueue(el)
    @push_store.push(el)
  end

  def dequeue
    reverse_store
    dequeued = @pop_store.pop
    reverse_store
    dequeued
  end

  def reverse_store
    to = @push_store
    from = @pop_store
    to, from = from, to unless @push_store.empty?

    from.length.times do
      to.push(from.pop)
    end
  end

    # if @push_store.empty?
    #   @pop_store.length.times do
    #     @push_store.push(@pop_store.pop)
    #   end
    # else
    #   @pop_store.length.times do
    #     @push_store.push(@pop_store.pop)
    #   end
    # end

  def size
    @push_store.size
  end

  def empty?
    @push_store.empty?
  end
end
