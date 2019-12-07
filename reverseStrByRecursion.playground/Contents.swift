func reverseString(_ str: String) -> String {
    let strArray = Array(str)
    let size = strArray.count
    if str.count == 1 {
        return str
    } else {
        return String(strArray[size - 1]) + reverseString(String(strArray[0..<size - 1]))
    }
}

let str = "abcdef"
let result = reverseString(str)

print(str)
print(result)
