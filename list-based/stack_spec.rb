require_relative 'stack'

RSpec.describe Stack do
  let(:stack) { Stack.new }

  it "return nil content when a stack is empty" do
    expect(stack.content).to eq(nil)
  end

  it "return nil when pop an empty stack" do
    expect(stack.pop).to eq(nil)
  end

  it "return the content of a stack with one element" do
    stack.append(1)
    expect(stack.content).to eq("1")
  end

  it "return the content of a stack with multiple elements" do
    stack.append(1)
    stack.append(2)
    stack.append(3)
    expect(stack.content).to eq("3 -> 2 -> 1")
  end

  it "pop remove the element at the top of a stack" do
    stack.append(1)
    stack.append(2)
    stack.append(3)
    stack.pop
    expect(stack.content).to eq("2 -> 1")
  end

  it "return the element at the top of a stack with pop" do
    stack.append(1)
    stack.append(3)
    returned_element = stack.pop
    expect(returned_element).to eq(3)
  end
end
