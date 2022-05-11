import UIKit

// 내 풀이
func solution(_ n:Int) -> Int {
    var result: Int = 0
    if n != 0 {
        for i in 1...n {
            if n % i == 0 {
                result += i
            }
        }
    }
    return result
}

solution(12)
solution(5)


// 좋은 풀이
func solution2(_ n:Int) -> Int {
    guard n != 0 else {
        return 0
    }
    return Array(1...n).filter{n % $0 == 0}.reduce(0, +)
}

solution2(12)
solution2(5)

func solution3(_ n:Int) -> Int {
    return n != 0 ? (1...n).filter{n % $0 == 0}.reduce(0){$0 + $1} : 0
}

solution3(12)
solution3(5)
