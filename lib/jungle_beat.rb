require './lib/linked_list'
require 'pry'

class JungleBeat
  attr_accessor :list

  def initialize(list=LinkedList.new)
    @list = list
  end

  def append(beats)
    beats = beats.split()
  
    beats.each do |beat|
       @list.append(beat)
    end
  end

  def count
    @list.count
  end

end