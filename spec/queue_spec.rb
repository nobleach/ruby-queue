require_relative '../src/queue'

RSpec.describe Queue, "" do
  context "With an empty queue" do
    it "has a size of zero" do
      q = Queue.new
      expect(q.size).to eq 0
    end

    it "is empty" do
      q = Queue.new
      expect(q.empty?).to eq true
    end

    it "enqueues an element" do
      q = Queue.new
      q.enqueue(3)
      expect(q.empty?).to eq false
      expect(q.size).to eq 1
    end

    it "dequeues an element" do
      q = Queue.new
      q.enqueue(3)
      q.enqueue(5)
      q.enqueue(9)
      expect(q.size).to eq 3
      expect(q.dequeue()).to eq 3
      expect(q.size).to eq 2
    end
  end
end
