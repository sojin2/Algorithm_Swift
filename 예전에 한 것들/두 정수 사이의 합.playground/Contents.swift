import UIKit

// 내 풀이
func solution(_ a:Int, _ b:Int) -> Int64 {
    var result = 0

    if a <= b {
        for i in a...b {
            result += i
        }
    } else if a >= b {
        for i in b...a {
            result += i
        }
    }

    return Int64(result)
}
solution(3, 5)
solution(3, 3)
solution(5, 3)

// 좋은 풀이
func solution2(_ a:Int, _ b:Int) -> Int64 {
    return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
}

solution2(3, 5)
solution2(3, 3)
solution2(5, 3)
