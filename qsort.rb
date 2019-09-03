module Qsort
  def self.call(array)
    return array if array.size < 2
    pivot = array.shift
    less, greater = array.partition { |value| value < pivot }
    call(less) + [pivot] + call(greater)
  end
end
