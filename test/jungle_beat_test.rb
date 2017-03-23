gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test
  def test_instance_of_jungle_beat
    jb = JungleBeat.new

    assert_instance_of JungleBeat, jb
  end
  
  def test_jungle_beat_has_linked_list_by_default
    jb = JungleBeat.new

    assert_equal LinkedList, jb.list.class
    assert_equal nil, jb.list.head
  end

  def test_jungle_beat_can_append_a_string_to_differnt_nodes
    skip
    jb = JungleBeat.new
    
    jb.append("beep boo la")
    assert_equal "beep", jb.list.head.data
    assert_equal "boo", jb.list.next_node.data
    assert_equal "la", jb.list.next_node.next_node.data

    jb.append("dee beep boo")
    assert_equal 6, jb.count
  end
end