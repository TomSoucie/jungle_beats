require './lib/node/'
require 'pry'

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
    @head = Node.new(name, next_node=@head)
  end

  def insert(index, name)
    current = @head
    (index-1).times do
      if current.next_node != nil
        current = current.next_node
      end
    end
    new_node = Node.new(name)
    if current.next_node != nil
      new_node.next_node = current.next_node
    end
    current.next_node = new_node
  end

  def find(index, n)
    current = @head
    count_string = ""
    index.times do
      current = current.next_node
    end
    n.times do
      count_string += current.data + " "
      if current.next_node != nil
        current = current.next_node
      end
    end
    count_string
  end

  def includes?(name)
    current = @head
    if current.data == name
      true
    else
    until current.next_node == nil
      if current.data == name
        true
      else
        current = current.next_node
      end
      false
    end
    end
  end

  def pop
    current = @head
    previous = nil
    until current.next_node.nil?
      previous = current
      current = current.next_node
    end
      previous.next_node = nil
      current.data
  end

end