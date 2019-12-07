import Foundation

func compareVersions(_ first: String, _ second: String) -> (String, String, ComparisonResult)? {
    
    var str1 = first
    var str2 = second
    
    let sum = (str1 + str2)
    let trimmedSum = sum.replacingOccurrences(of: ".", with: "")
    
    guard sum.contains("..") != true &&
        UInt64(trimmedSum) != nil &&
        str1.count > 0 &&
        str2.count > 0 &&
        str1.hasSuffix(".") != true &&
        str2.hasSuffix(".") != true else { return nil }
    
    if str1.first! == "." {
        str1.insert("0", at: str1.startIndex)
    }
    if str2.first! == "." {
        str2.insert("0", at: str1.startIndex)
    }
    
    if str2.compare(str1, options: .numeric) == .orderedDescending || str2.compare(str1, options: .forcedOrdering) == .orderedDescending {
        return (first, second, .orderedDescending)
    } else if str2.compare(str1, options: .numeric) == .orderedAscending || str2.compare(str1, options: .forcedOrdering) == .orderedAscending {
        return (first, second, .orderedAscending)
    } else {
        return (first, second, .orderedSame)
    }
}

func printCompareVersions(_ comparison: (first: String, second: String, result: ComparisonResult)?) {
    if comparison == nil {
        print("At least one version is incorrect.")
    } else if comparison!.result == .orderedDescending {
        print("\(comparison!.first) < \(comparison!.second)")
    } else if comparison!.result == .orderedAscending {
        print("\(comparison!.first) > \(comparison!.second)")
    } else if comparison!.result == .orderedSame {
        print("\(comparison!.first) == \(comparison!.second)")
    }
}

//let firstComparison = compareVersions("2.4.191.8.35", "2.4.191.8.30")
//let secondComparison = compareVersions("01.234.5", "2.0.0")
//let thirdComparison = compareVersions("0.1", "0.01")
//let fourthComparison = compareVersions(".1", "0.1")
//let fifthComparison = compareVersions(".1", "-0.1")
let sixthComparison = compareVersions("999999999999999999", "1.6")

//printCompareVersions(firstComparison)
//printCompareVersions(secondComparison)
//printCompareVersions(thirdComparison)
//printCompareVersions(fourthComparison)
//printCompareVersions(fifthComparison)
printCompareVersions(sixthComparison)

//UInt64(99999999999999999916)

var i = 99999999999999999916
