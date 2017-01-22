require_relative 'linked_list'

RSpec.describe LinkedList do
  it "return nil with tail  when a linked list is empty" do
    linked_list = LinkedList.new
    expect(linked_list.tail).to eq(nil)
  end

  it "return the last element of the linked list" do
    linked_list = LinkedList.new
    linked_list.append(5)
    linked_list.append(6)
    expect(linked_list.tail).to eq(6)
  end

  it "return nil with content when a linked list is empty" do
    linked_list = LinkedList.new
    expect(linked_list.content).to eq(nil)
  end

  it "display the content of a linked list with one element" do
    linked_list = LinkedList.new
    linked_list.append(5)
    expect(linked_list.content).to eq("5")
  end

  it "display the content of a linked list with multiple element" do
    linked_list = LinkedList.new
    linked_list.append(5)
    linked_list.append(6)
    linked_list.append(7)
    expect(linked_list.content).to eq("5 -> 6 -> 7")
  end
end
