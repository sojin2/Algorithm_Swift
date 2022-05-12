import UIKit
import Foundation

// 내가 푼 풀이
func solution(_ n:Int) -> Int{
    var num = n
    var result = 0

    while num > 0 {
        result = result + (num % 10)
        num /= 10
    }

  return result
}

solution(123)
solution(987)


// 좋은 풀이
func solution2(_ n:Int) -> Int
{
    return String(n).reduce(0, {$0+Int(String($1))!});
}

solution2(123)
solution2(987)
