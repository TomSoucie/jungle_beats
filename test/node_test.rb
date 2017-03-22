gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class LinkListTest < Minitest::Test
  def test_the_node_holds_data
    node = Node.new("plop")
    
    assert_equal "plop", node.data
  end

  def test_the_next_node_is_nil_by_default
    node = Node.new("plop")

    assert_equal nil, node.next_node
  end

end