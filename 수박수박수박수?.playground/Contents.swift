import UIKit

func solution(_ n:Int) -> String {
    
    // 내가 푼 것
    var result = ""

      for i in 1...n {
          if i % 2 == 1 {
              result += "수"
          } else {
              result += "박"
          }
      }

      return result
    
    // 좋은 풀이
    
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
    
    return (0..<n).map{($0%2==0 ? "수":"박")}.reduce("", +)
    
    return String(String(repeating: "수박", count: (n+1) / 2).prefix(n))
}
