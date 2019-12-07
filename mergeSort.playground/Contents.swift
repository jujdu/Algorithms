var array = [7,1,4,3,6,5,2]

func merge<T: Comparable>(_ array1: [T], _ array2: [T]) -> [T] {
    if array1.count == 0 {
        return array2
    } else if array2.count == 0 {
        return array1
    } else if array1[0] < array2[0] {
        return [array1[0]] + merge(Array(array1[1..<array1.count]), array2)
    } else {
        return [array2[0]] + merge(array1, Array(array2[1..<array2.count]))
    }
}

func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    
    if array.count < 2 {
        return array
    } else {
        let mid = array.count / 2
        
        return merge(mergeSort(Array(array[0..<mid])), Array(array[mid..<array.count]))
    }
}

mergeSort(array)
