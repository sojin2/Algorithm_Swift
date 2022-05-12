import UIKit
import Foundation

// 내 풀이
func solution(_ n:Int64) -> Int64 {
    let num = Int64(sqrt(Double(n)))
    return  num * num == n ? (num + 1) * (num + 1) : -1
}

solution(121)
solution(3)
