import UIKit

// 내 풀이
func solution(_ s:String) -> String {
    var result = String()
    for i in 0..<s.count{
        result += String(s.sorted(by:>)[i])
    }
    return result
}
solution("Zbcdefg")

// 좋은 풀이
func solution2(_ s:String) -> String {
    return String(s.sorted { $0 > $1 })
}
solution2("Zbcdefg")
