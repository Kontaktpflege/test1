import UIKit

let coinList = [50, 20, 10, 5, 1]
let n = coinList.count

func minCoin (value: Int) -> Int {
    var coinsNeeded = [Int]()
    var v : Int = value
    var k : Int = 0
    for i in 0..<n {
        while v >= coinList[i] {
            v -= coinList[i]
            coinsNeeded.append(coinList[i])
            k += 1
        }
    }
    print("Min Coin Count: \(k)")
    print("Needed Coins: ")
    for i in 0..<n {
        print (coinsNeeded[i])
    }
   return k
}
minCoin(value: 86)
