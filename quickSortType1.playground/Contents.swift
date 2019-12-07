var array = [1,3,6,75,4,3]

func quickSort<T: Comparable>(_ array: [T]) -> [T] {

    if array.count > 1 {
        var less: [T] = []
        var greater: [T] = []
        var equal: [T] = []
        let pivot = array[1]

        for item in array {
            if item < pivot {
                less.append(item)
            } else if item == pivot {
                equal.append(item)
            } else {
                greater.append(item)
            }
        }
        return quickSort(less) + equal + quickSort(greater)
    } else {
        return array
    }
}

quickSort(array)

print("Hello, world")


func quickSort1<T: Comparable>(_ array: [T]) -> [T] {
    
    if array.count > 1 {
        var less: [T] = []
        var greater: [T] = []
        var pivot = array[0]
        
        for item in array {
            if item <= pivot {
                less.append(item)
            } else {
                greater.append(item)
            }
        }
        return quickSort1(less) + [pivot] + quickSort1(greater)
    } else {
        return array
    }
}

quickSort(array)
