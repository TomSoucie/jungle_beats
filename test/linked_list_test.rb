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

  def test_the_list_will_return_a_beat
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

    list.append("boop bop")
    assert_equal 2, list.count

    list.append("bop")
    list.append("dee")
    assert_equal 4, list.count
  end

  def test_the_list_can_return_a_string_of_beats
    list = LinkedList.new

    list.append("boop bop")
    assert_equal "boop bop", list.to_string

    list.append("boop")
    list.append("dee")
    assert_equal "boop bop boop dee", list.to_string
  end

  def test_the_list_will_prepend
    list = LinkedList.new

    list.append("la")
    assert_equal "la", list.to_string

    list.append("bop")
    assert_equal "la bop", list.to_string

    list.prepend("bop")
    assert_equal "bop la bop", list.to_string
  end

  def test_the_list_can_insert_at_a_given_index
    list = LinkedList.new

    list.append("plop")
    list.append("la")
    list.append("bop")
    assert_equal 3, list.count
    assert_equal "plop la bop", list.to_string

    list.insert(1, "woo")
    assert_equal "plop woo la bop", list.to_string
  end

  def test_the_list_can_find_beats_and_return_specified_quantity
    list = LinkedList.new

    list.append("beep")
    list.append("bop")
    list.append("boo")
    list.append("la")
    list.append("la")
    assert_equal 5, list.count
    assert_equal "beep bop boo la la", list.to_string

    assert_equal "bop boo ", list.find(1, 2)
    assert_equal "la ", list.find(3, 1)
  end

  def test_the_list_can_check_if_includes_some_beat
    list = LinkedList.new

    list.append("beep")
    list.append("bop")
    list.append("boo")
    list.append("la")
    list.append("la")
    assert_equal 5, list.count
    assert_equal "beep bop boo la la", list.to_string

    assert list.includes?("beep")
    refute list.includes?("deep")
  end

  def test_the_list_will_pop_the_last_beat
    list = LinkedList.new

    list.append("beep")
    list.append("bop")
    list.append("boo")
    assert_equal 3, list.count
    assert_equal "beep bop boo", list.to_string

    assert_equal "boo", list.pop 
    assert_equal 2, list.count
    assert_equal "beep bop", list.to_string
  end
end