import UIKit

// 내 풀이
func solution(_ x:Int) -> Bool {
    let num = String(x).map{Int(String($0))!}
    var result: Int = 0

    for i in num {
        result += i
}

    return (x % result == 0) ? true : false
}

solution(10)
solution(12)
solution(11)
solution(13)

// 좋은 풀이
func solution2(_ x:Int) -> Bool {
    return x % String(x).reduce(0, {$0+Int(String($1))!}) == 0
}

solution2(10)
solution2(12)
solution2(11)
solution2(13)
