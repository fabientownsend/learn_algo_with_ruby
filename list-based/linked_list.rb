require_relative 'node'

class LinkedList
  def initialized
    @head = nil
  end

  def append(value)
    if @head
      last_node.next = Node.new(value)
    else
        @head = Node.new(value)
    end
  end

  def tail
    last_node.value if @head
  end

  def content
    build_content if @head
  end

  private

  def last_node
    current_node = @head

    while not last?(current_node)
      current_node = current_node.next
    end

    current_node
  end

  def build_content
    current_node = @head
    content = ""

    while not last?(current_node)
      content << "#{current_node.value} -> "
      current_node = current_node.next
    end

    content << "#{current_node.value}"
  end

  def last?(node)
    not node.next
  end
end
