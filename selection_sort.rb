# Sorts an array from smallest to largest.
# Performance is O(n**2).

class SelectionSort
  def self.call(array)
    new(array).sort
  end

  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sort
    sorted_array = []
    array.size.times do
      smallest_value(array).tap do |result|
        sorted_array << result[:smallest]
        array.delete_at(result[:smallest_index])
      end
    end
    sorted_array
  end

  private

  def smallest_value(array)
    smallest = array.first
    smallest_index = 0

    (1..(array.size - 1)).each do |index|
      if array[index] < smallest
        smallest = array[index]
        smallest_index = index
      end
    end
    { smallest_index: smallest_index, smallest: smallest }
  end
end
