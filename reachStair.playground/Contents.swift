import UIKit

func fibonachi (n : Int) -> Int {
    
    if n <= 1 {
        return n
    };
    return {
        fibonachi(n: n-1) + fibonachi(n: n-2)
    }()
}
//print (fibonachi(n: 5))

func countWays (s: Int) -> Int {
    return fibonachi(n: s+1)
}
print (countWays(s: 5))
