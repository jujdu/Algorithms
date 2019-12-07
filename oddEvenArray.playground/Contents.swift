func makeRandomMatrix(n: Int, m: Int) -> [[Int]]? {
    guard n > 0, m > 0 else { return nil }
    var matrix: [[Int]] = []
    for i in 0..<n {
        matrix.append([])
        for _ in 0..<m {
            matrix[i].append(Int.random(in: 10...99))
        }
    }
    return matrix
}

func oddEvenMatrix(_ matrix: [[Int]]?) -> [[Int]]? {
    
    guard var newMatrix = matrix else { return nil }
    
    for i in 0..<(newMatrix.count - 1) {
        if i % 2 == 0 {
            for j in 0...newMatrix[i].count - 1 {
                let tmp = newMatrix[i][j]
                newMatrix[i][j] = newMatrix[i+1][j]
                newMatrix[i+1][j] = tmp
            }
        }
    }
    return newMatrix
}

func printMatrix(_ matrix: [[Int]]?) {
    if let matrix = matrix {
        for i in 0...(matrix.count - 1) {
            print(matrix[i])
        }
        print("\n")
    }
}

var oldMatrix = makeRandomMatrix(n: 2, m: 3)
var newMatrix = oddEvenMatrix(oldMatrix)

printMatrix(oldMatrix)
printMatrix(newMatrix)
