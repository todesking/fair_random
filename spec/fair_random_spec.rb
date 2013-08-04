require 'spec_helper'

describe FairRandom do
  describe 'Box' do
    Given(:box) { FairRandom::Box.new(element_type_count, box_capacity) }
    context 'box size == type count' do
      describe 'content count' do
        Given(:box_capacity) { 4 }
        Given(:element_type_count) { 2 }
        When(:box_contents) { box_capacity.times.map { box.next } }
        Then { box_contents.count_by(&1) == {0 => 2, 1 => 2} }
      end
      describe 'reset contents' do
        Given(:box_capacity) { 4 }
        Given(:element_type_count) { 2 }
        When(:box_contents) { (box_capacity * 2).times.map { box.next } }
        Then { box_contents.count_by(&1) == {0 => 4, 1 => 4} }
      end
    end
    context 'box size MOD type count != 0' do
      Given(:box_capacity) { 3 }
      Given(:element_type_count) { 2 }
      Then { expect{box}.to raise_error ArgumentError }
    end
  end
end
