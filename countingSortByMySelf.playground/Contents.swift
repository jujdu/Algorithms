func countingSort(array: [Int], maxValue: Int) -> [Int] {
    
    let maxIndex = maxValue + 1
    let size = array.count
    
    var countingArray = Array(repeating: 0, count: maxIndex)
    var resultArray = Array(repeating: 0, count: size)
    
    for item in array {
        countingArray[item] += 1
    }
    
    var index = 0
    
    for i in 0..<maxIndex {
        for _ in 0..<countingArray[i] {
            resultArray[index] = i
            index += 1
        }
    }
    return resultArray
}


var array = [5,3,4,7,1,1,2,9,3,5]
let sort = countingSort(array: array, maxValue: 9) //
print(sort)
