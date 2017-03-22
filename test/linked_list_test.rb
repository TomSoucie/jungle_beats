gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkListTest < Minitest::Test
  def test_the_list_head_is_nil_by_default
    list = LinkedList.new

    assert_equal nil, list.head
  end

  def test_the_list_will_append_a_beat_to_the_list
    list = LinkedList.new

    list.append("doop")
    
    assert_equal "doop", list.head.data
    assert_equal nil, list.head.next_node
  end

  def test_the_list_can_count_a_beat
    list = LinkedList.new

    list.append("doop")
    
    assert_equal 1, list.count
  end

  def test_the_list_will_return_a_string_of_beats
    list = LinkedList.new

    list.append("doop")

    assert_equal "doop", list.to_string
  end

  def test_the_list_can_append_multiple_beats
    list = LinkedList.new

    list.append("doop")
    assert_equal "doop", list.head.data

    list.append("beep")
    assert_equal "beep", list.head.next_node.data

    assert_equal nil, list.head.next_node.next_node
  end
  
  def test_the_list_can_count_multiple_beats
    list = LinkedList.new

    list.append("doop dop")
    assert_equal 2, list.count

    list.append("boo")
    list.append("deee")
    assert_equal 4, list.count
  end

  def test_the_list_can_return_a_string_of_beats
    list = LinkedList.new

    list.append("doop dop")
    assert_equal "doop dop", list.to_string

    list.append("boo")
    list.append("deee")
    assert_equal "doop dop boo deee", list.to_string
  end

  def test_the_list_will_prepend
    list = LinkedList.new

    list.append("plop")
    assert_equal "plop", list.to_string

    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
   end 

end