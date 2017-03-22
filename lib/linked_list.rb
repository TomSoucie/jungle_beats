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
    count_string = ""
    if @head.nil?
      "no nodes"
    else
      current = @head
      until current.next_node == nil
        count_string += current.data + " " 
        current = current.next_node
      end
      count_string += current.data + " "
    end
    count_string.split().count
  end

  def to_string
    count_string = ""
    if @head.nil?
      "no nodes"
    else
      current = @head
      until current.next_node == nil
        count_string += current.data + " " 
        current = current.next_node
      end
      count_string += current.data
    end
    count_string
  end

  def prepend(name)

  end

end