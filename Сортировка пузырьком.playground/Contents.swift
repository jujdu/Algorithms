func bubbleSort<T: Comparable>(array: inout [T]) -> [T] {
    
    let size = array.count
    
    for i in 0..<size {
        let newSize = (size - 1) - i
        for j in 0..<newSize {
            let key = array[j]
            if key > array[j+1] {
                array[j] = array[j+1]
                array[j+1] = key
            }
        }
    }
    return array
}

var array = [3,1,6,7,2,4,0,10,5]
bubbleSort(array: &array)
