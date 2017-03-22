require './lib/node/'

class LinkedList
  attr_reader   :head
  def initialize
    @head = nil
  end

  def append(name)
    if @head.nil?
      @head = Node.new(name)
    else
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(name)
    end
  end

  def count
    1
  end

  def to_string
    @head.data
  end

end