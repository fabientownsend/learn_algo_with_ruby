class Node
  attr_accessor :value
  attr_accessor :left_children
  attr_accessor :right_children

  def initialize(value)
    @value = value
    @left_children = nil
    @right_children = nil
  end
end

class Tree
  attr_accessor :root

  def initialize(root)
    @root = Node.new(root)
  end

  def search(find_value)
    search_node(@root, find_value)
  end

  def print_tree
    get_tree(@root, "").chop
  end

  def get_tree(node, string_result)
    if node
      string_result += node.value.to_s + "-"
      string_result = get_tree(node.left_children, string_result)
      string_result = get_tree(node.right_children, string_result)
    end

    string_result
  end

  private

  def search_node(node, find_value)
    if node
      if node.value == find_value
        return true
      else
        search_node(node.left_children, find_value) || search_node(node.right_children, find_value)
      end
    else
      false
    end
  end
end

RSpec.describe Tree do
  it "initialize the root with a value" do
    node = Tree.new(1)
    expect(node.root.value).to eq(1)
  end

  it "can find a value" do
    node = Tree.new(1)
    expect(node.search(1)).to be(true)
  end

  it "return false when the value doesn't exist" do
    node = Tree.new(1)
    node.root.left_children = Node.new(2)
    expect(node.search(3)).to be(false)
  end

  it "can find a value in nodes" do
    node = Tree.new(1)
    node.root.left_children = Node.new(2)
    expect(node.search(2)).to be(true)
  end

  it "return true if find value in right node" do
    node = Tree.new(1)
    node.root.left_children = Node.new(2)
    node.root.right_children = Node.new(3)
    expect(node.search(3)).to be(true)
  end

  it "return result deeper" do
    node = Tree.new(1)
    node.root.left_children = Node.new(2)
    node.root.right_children = Node.new(3)
    node.root.right_children.left_children = Node.new(4)
    node.root.right_children.right_children = Node.new(5)
    expect(node.search(5)).to be(true)
  end

  it "get print" do
    node = Tree.new(1)
    node.root.left_children = Node.new(2)
    node.root.right_children = Node.new(3)
    node.root.left_children.left_children = Node.new(4)
    node.root.left_children.right_children = Node.new(5)
    expect(node.print_tree).to eq("1-2-4-5-3")
  end
end
