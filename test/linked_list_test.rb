gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkListTest < Minitest::Test
  def test_the_list_head_is_nil_by_default
    list = LinkedList.new

    assert_equal nil, list.head
  end

  def test_the_list_will_append_a_head_with_next_node_nil_by_default
    list = LinkedList.new

    list.append("doop")
    
    assert_equal "doop", list.head.data
    assert_equal nil, list.head.next_node
  end

  def test_the_list_can_count_a_node
    list = LinkedList.new

    list.append("doop")
    
    assert_equal 1, list.count
  end

  def test_the_list_will_return_a_string_of_data
    list = LinkedList.new

    list.append("doop")

    assert_equal "doop", list.to_string
  end

  def test_the_list_can_append_multiple_items
    list = LinkedList.new

    list.append("doop")
    assert_equal "doop", list.head.data

    list.append("beep")
    assert_equal "beep", list.head.next_node.data

    assert_equal nil, list.head.next_node.next_node
  end
  
  def test_the_list_can_count_multiple_nodes
    skip
  end

  def test_the_list_can_return_data_from_multiple_nodes
    skip
  end
end