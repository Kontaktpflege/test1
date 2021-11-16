import UIKit

func smallestInt(_ array: [Int]) -> Int {
    guard let max = array.max(), max > 0 else { return 1 }
    let count = array.count

    var temp = Array(repeating: 0, count: max + 1)
    
    for j in 0..<count {
        let value = array[j]
        if value > 0 {
            temp[value] = -1
        }
    }

    for i in 1...max {
        if temp[i] == 0 {
            return i
        }
    }
    return max + 1
}

print (smallestInt([8, 1, 9, -2]))
