import UIKit


// 내 풀이
func solution(_ x:Int, _ n:Int) -> [Int64] {

    var answer: [Int64] = [Int64]()
    var result: Int = 0

    for _ in 1...n {
        result += x
        answer.append(Int64(result))
}
    return answer
}

solution(2, 5)
solution(4, 3)
solution(-4, 2)


// 좋은 풀이
func solution2(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}

solution2(2, 5)
solution2(4, 3)
solution2(-4, 2)
