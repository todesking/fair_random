require "fair_random/version"

module FairRandom
  class Box
    def initialize(element_type_count, box_capacity)
      raise ArgumentError if box_capacity % element_type_count != 0
      @element_type_count = element_type_count
      @box_capacity = box_capacity
      reset_contents
    end

    def next
      reset_contents if @index >= @contents.size
      c = @contents[@index]
      @index += 1
      c
    end

    private
      def reset_contents
        @contents = []
        @index = 0
        # type_index => count
        @element_type_count.times do|type|
          @contents.concat([type] * (@box_capacity / @element_type_count))
        end
        @contents = @contents.shuffle
      end
  end
end
