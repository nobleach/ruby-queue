class Queue
  def initialize
    @storage = []
  end

  def enqueue(el)
    @storage.push(el)
  end

  def dequeue
    @storage.shift
  end

  def size
    @storage.length
  end

  def empty?
    @storage.length == 0
  end
end
