require_relative './selection_sort.rb'

RSpec.describe SelectionSort do
  it 'sorts an array from smallest to largest' do
    array = [5, 4, 3, 1, 9, 8, 4, 0, 7, 6, 2]
    expect(described_class.call(array)).to(
      eq([0, 1, 2, 3, 4, 4, 5, 6, 7, 8, 9])
    )
  end
end
