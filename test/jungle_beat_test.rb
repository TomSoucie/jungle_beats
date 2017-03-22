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
  end
end