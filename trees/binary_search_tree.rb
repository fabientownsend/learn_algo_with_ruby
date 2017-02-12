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

class BinarySearchTree
  attr_accessor :root

  def initialize(root)
    @root = Node.new(root)
  end

  def search(find_value)
    search_node(@root, find_value)
  end

  def insert(new_val)
    insert_node(@root, new_val)
  end

  private

  def insert_node(node, new_val)
    if node.value > new_val
      if node.left_children
        insert_node(node.left_children, new_val)
      else
        node.left_children = Node.new(new_val)
      end
    else
      if node.right_children
        insert_node(node.right_children, new_val)
      else
        node.right_children = Node.new(new_val)
      end
    end
  end

  def search_node(node, find_value)
    if node
      if node.value == find_value
        true
      else
        if node.value > find_value
          search_node(node.left_children, find_value)
        else
          search_node(node.right_children, find_value)
        end
      end
    else
      false
    end
  end
end

RSpec.describe BinarySearchTree do
  it "initialize the root with a value" do
    node = BinarySearchTree.new(1)
    expect(node.root.value).to eq(1)
  end

  it "can find a value" do
    node = BinarySearchTree.new(1)
    expect(node.search(1)).to be(true)
  end

  it "return false when the value doesn't exist" do
    node = BinarySearchTree.new(1)
    node.insert(2)
    expect(node.search(3)).to be(false)
  end

  it "can find a value in nodes" do
    node = BinarySearchTree.new(1)
    node.insert(2)
    expect(node.search(2)).to be(true)
  end

  it "return true if find value in right node" do
    node = BinarySearchTree.new(1)
    node.insert(2)
    node.insert(3)
    expect(node.search(3)).to be(true)
  end

  it "return result deeper" do
    node = BinarySearchTree.new(1)
    node.insert(2)
    node.insert(3)
    node.insert(4)
    node.insert(5)
    expect(node.search(5)).to be(true)
  end
end
