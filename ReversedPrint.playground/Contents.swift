func advancedPrint(_ i: Int) {
    if i > 0 {
        for i in 1...i {
            var array = Array(1...i)
            var stringArray = array.map { String($0) }
            
            if i % 2 == 0 {
                let reversedArray = stringArray.reversed().joined(separator: " - ")
                print(reversedArray)
            } else {
                let array = stringArray.joined(separator: " - ")
                print(array)
            }
        }
    } else {
        print("Число должно быть больше чем \"0\"")
    }
}

//advancedPrint(7)


func advancedPrint2(_ i: Int) {
    if i > 0 {
        var array: [String] = []
        for i in 1...i {
            array.append("\(i)")
            if i % 2 == 0 {
                let reversedArray = array.reversed().joined(separator: " - ")
                print(reversedArray)
            } else {
                let array = array.joined(separator: " - ")
                print(array)
            }
        }
    } else {
        print("Число должно быть больше чем \"0\"")
    }
}

advancedPrint2(6)
