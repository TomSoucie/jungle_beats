require './lib/linked_list'

class JungleBeat
  attr_reader :list

  def initialize(list=LinkedList.new)
    @list = list
  end
end