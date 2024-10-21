def bubble_sort(array = [])
  array[0..-2].each_index do |index|
    array[0..-2-index].each_index do |index|
      if array[index] > array[index + 1]
        tmp = array[index]
        array[index] = array[index + 1]
        array[index + 1] = tmp
      end
    end
  end
  array
end

array = Array.new(10000).map { |_| rand(1..10000) }

puts bubble_sort(array)
