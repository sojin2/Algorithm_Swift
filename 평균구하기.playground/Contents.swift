import UIKit

func solution(_ arr:[Int]) -> Double {
    // 내 풀이
    var result = 0
    
    for i in arr {
        result += i
    }
    return Double(result) / Double(arr.count)
    
    // 좋은 풀이
    return Double(arr.reduce(0,+))/Double(arr.count)
}
