import UIKit
import Foundation

// 내 풀이
func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var result: Int = 0
    
    for i in 1...count {
        result += price * i
    }
    
    return money > result ? 0 : Int64(result - money)
}
solution(3, 20, 4)
solution(1, 20, 4)

// 괜찮은 풀이
func solution2(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let totalPrice = price * (count * (count+1)/2)

    if money >= totalPrice {
        return 0
    }

    return Int64(totalPrice - money)
}

