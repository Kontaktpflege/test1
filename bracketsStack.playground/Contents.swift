import UIKit

func checkBrackets(s: String) -> Bool {
    let pairs: [Character: Character] = ["(": ")"]
    var stack: [Character] = []
    for i in s {
        if let match = pairs[i] {
            stack.append(match)
        } else if stack.last == i {
            stack.popLast()
        } else {
            print ("Brackets Not Balanced")
            return false
        }
    }
    print ("Brackets Balanced")
    return stack.isEmpty
}

checkBrackets(s: "(())")
