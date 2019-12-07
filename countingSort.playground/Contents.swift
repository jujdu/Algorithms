func countingSort(_ array: [Int], maxValue: Int) -> [Int] {
    
    let size = array.count
    let maxValue = maxValue + 1
    
    var container = Array(repeating: 0, count: maxValue)
    var result = Array(repeating: 0, count: size)
    
    for item in array {
        container[item] += 1
    }
    
    var index = 0
    
    for i in 0..<maxValue {
        for _ in 0..<container[i] {
            result[index] = i
            index += 1
        }
    }
    
    return result
}

let array = [1,8,1,5,7,3,4]

countingSort(array, maxValue: 8)
