module BinarySearch
  def self.search(list, item)
    list  = list.sort
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
