import UIKit

// 내 풀이
func solution(_num:Int) -> String {
    if num % 2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }
}

solution(_num: 3)
solution(_num: 26)

// 좋은 풀이
func solution2(_num:Int) -> String {
    return num % 2 == 0 ? "Even" : "Odd"
}
solution2(_num: 3)
solution2(_num: 26)
