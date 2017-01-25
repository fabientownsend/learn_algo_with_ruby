require_relative 'node'

class Queue
  def initialize
    @head = nil
    @tail = nil
  end

  def enqueu(value)
    node = Node.new(value)

    if not @tail.nil?
      @tail.next = node
      @tail = @tail.next
    else
      @head = node
      @tail = node
    end
  end

  def dequeu
    remove_node if not @head.nil?
  end

  def peek
    @head.value if not @head.nil?
  end

  def content
    build_content if not @head.nil?
  end

  private

  def remove_node
    value = @head.value
    if @head.next
      @head = @head.next
    else
      @head = nil
      @tail = nil
    end
    value
  end

  def build_content
    content = ""
    current = @head

    while current.next
      content << "#{current.value} -> "
      current = current.next
    end

    content << "#{current.value}"
  end
end
