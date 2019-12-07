func binarySearch(number: Int, array: [Int]) -> Int? {
    
    var low = 0
    var high = array.count - 1
    
    while low <= high {
        
        let mid = low + (high - low) / 2
        
        if number < array[mid] {
            high = mid - 1
        } else if number > array[mid] {
            low = mid + 1
        } else {
            return mid
        }
    }
    
    return nil
}

binarySearch(number: 3, array: [1,2,7,3,4,5])
