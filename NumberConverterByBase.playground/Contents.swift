import UIKit

func converter(number: Int, base: Int) -> String {
    var array = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"]
    if number < base {
        return array[number] //base
    } else {
        return converter(number: number / base, base: base) + array[number % base] //rec
    }
}

converter(number: 10, base: 2)

//10
//return 10/2 + array[0]
//return 5/2 + array[1]
//return 2/2 + array[0]
//return 1
//
//
//
2 % 2
