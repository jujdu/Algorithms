func anagram(str1: String, str2: String) -> Bool {

    var counter1 = Array(repeating: 0, count: 28)
    var counter2 = Array(repeating: 0, count: 28)

    var aPos: UInt32 = 97

    for ch in str1.unicodeScalars {
        var pos = Int(ch.value - aPos)
        counter1[pos] += 1
    }
    for ch in str2.unicodeScalars {
        var pos = Int(ch.value - aPos)
        counter2[pos] += 1
    }
    
    var i = 0
    var matched = true
    
    while i < 28 && matched {
        if counter1[i] == counter2[i] {
            i += 1
        } else {
            matched = false
        }
    }
    return matched
}

anagram(str1: "abc", str2: "acb")

