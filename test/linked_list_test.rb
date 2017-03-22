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
    
    assert_equal nil, list.head.next_node
  end

  def test_the_list_can_return_a_count_of_nodes
    list = LinkedList.new

    list.append("doop")
    
    assert_equal 1, list.count
  end

  def test_the_list_will_return_a_string_of_data
    list = LinkedList.new

    list.append("doop")

    assert_equal "doop", list.to_string
  end
end