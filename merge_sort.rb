def merge_sort(array)
    if array.length < 2
        return array
    else
        left = array.slice(0, (array.length/2))
        right = array.slice((left.length), (array.length-left.length))
        left = merge_sort(left)
        right = merge_sort(right)
        sorted = []
        right_index = 0
        left_index = 0
        (right.length + left.length).times do
            if right_index == (right.length)
                sorted.push(left[left_index])
                left_index += 1
            elsif left_index == (left.length)
                sorted.push(right[right_index])
                right_index += 1
            elsif right[right_index] <= left[left_index]
                sorted.push(right[right_index])
                right_index += 1
            elsif right[right_index] >= left[left_index]
                sorted.push(left[left_index])
                left_index += 1
            end
        end
    return sorted
    end
end


p merge_sort([4, 57, 8, 9, 2, 1, 1, 3, 3, 78, 46, 46])