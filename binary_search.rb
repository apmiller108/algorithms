# Returns the index of an item in a sorted array.
# Performance is O(log(n)).

module BinarySearch
  def self.call(list, item)
    start = 0
    last  = list.size - 1

    while start <= last
      mid = (start + last) / 2
      if list[mid] == item
        return mid
      elsif list[mid] > item
        last = mid - 1
      else
        start = mid + 1
      end
    end
  end
end
