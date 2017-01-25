require_relative 'queue'

RSpec.describe Queue do
  it "return content nil when dequeu the only element" do
    queue = Queue.new
    queue.enqueu(1)
    queue.dequeu
    expect(queue.content).to eq(nil)
  end

  it "re assign queu even it was empty" do
    queue = Queue.new
    queue.enqueu(1)
    queue.dequeu
    queue.enqueu(5)
    expect(queue.content).to eq("5")
  end

  it "add three elements to queue" do
    queue = Queue.new
    queue.enqueu(1)
    queue.enqueu(2)
    queue.enqueu(3)
    expect(queue.content).to eq("1 -> 2 -> 3")
  end

  it "return the head value of a queue" do
    queue = Queue.new
    queue.enqueu(1)
    queue.enqueu(2)
    queue.enqueu(3)
    expect(queue.peek).to eq(1)
  end

  it "remove one element of a queue" do
    queue = Queue.new
    queue.enqueu(1)
    queue.enqueu(2)
    queue.enqueu(3)
    expect(queue.dequeu).to eq(1)
    expect(queue.content).to eq("2 -> 3")
  end
end
