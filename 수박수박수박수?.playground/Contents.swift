import UIKit

// 내 풀이
func solution(_ n:Int) -> String {
    var result = ""

      for i in 1...n {
          if i % 2 == 1 {
              result += "수"
          } else {
              result += "박"
          }
      }

      return result
}

solution(3)
solution(4)


// 좋은 풀이
func solution2(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}

solution2(3)
solution2(4)

func solution3(_ n:Int) -> String {
    return (0..<n).map{($0%2==0 ? "수":"박")}.reduce("", +)
}

solution3(3)
solution3(4)

func solution4(_ n:Int) -> String {
    return String(String(repeating: "수박", count: (n+1) / 2).prefix(n))
}

solution4(3)
solution4(4)
