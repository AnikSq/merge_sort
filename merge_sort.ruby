def merge_sort(array)
    if array.length < 2
        return
    end

    # sort the left half of the array
    # sort the right half of the array 
    # merge them

    half = array.length / 2
    array_one = array[0...half]
    array_two = array[half...array.length]
    first_merge = merge_sort(array_one)
    second_merge = merge_sort(array_two)
    

end