require_relative 'node'

class Stack
  def initialize(node = nil)
    @head = node
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      new_head = Node.new(value)
      new_head.next = @head
      @head = new_head
    end
  end

  def pop
    if @head.nil?
      nil
    else
      value = @head.value
      @head = @head.next
      value
    end
  end

  def content
    build_content if not @head.nil?
  end

  private

  def build_content
    current = @head
    content = ""

    while current.next
      content << "#{current.value} -> "
      current = current.next
    end

    content << "#{current.value}"
  end
end
