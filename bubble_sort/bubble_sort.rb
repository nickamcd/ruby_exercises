def bubble_sort(array)
    return array if array.length <= 1

    loop do
        swapped = false # flag to check if value is swapped

        (array.length - 1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end

        break if not swapped
    end

    array
end

array_to_sort = [4, 3, 78, 2, 0, 2]

p bubble_sort(array_to_sort)
