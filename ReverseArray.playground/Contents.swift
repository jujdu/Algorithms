func newReversed<T>(_ array: inout [T]) -> [T] {

    var j = array.count - 1
    
    for i in 0..<(array.count / 2) {
        let tmp = array[i]
        array[i] = array[j]
        array[j] = tmp
        j -= 1
    }
    return array
}

var arrInt = [1,2,3,4,5,6,7]
var arrStr = ["Hello", "World"]


print(arrInt)
print(newReversed(&arrInt))

print(arrStr)
print(newReversed(&arrStr))
