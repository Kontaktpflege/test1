import UIKit

func isPalindrome(inputString: String) -> Bool {
    let stringLength = inputString.count
    var position = 0
    
    while position < stringLength / 2 {
        let startIndex = inputString.index(inputString.startIndex, offsetBy: position)
        let endIndex = inputString.index(inputString.endIndex, offsetBy: -position - 1)
        
        if inputString[startIndex] == inputString[endIndex] {
            position += 1
        } else {
            return false
        }
    }
    
    return true
}

print(isPalindrome(inputString: "daad"))
