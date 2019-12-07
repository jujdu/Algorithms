var array = [7,2,5,4,3,1]

func bubbleSort<T: Comparable>(_ array: inout [T]) -> [T] {
    
    let size = array.count
    
    for i in 0..<size {
        for j in 0..<size - i - 1 {
            if array[j] > array[j+1] {
                let temp = array[j+1]
                array[j+1] = array[j]
                array[j] = temp
            }
        }
    }
    return array
}

bubbleSort(&array) //±<n^2
