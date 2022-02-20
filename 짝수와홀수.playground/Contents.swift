import UIKit

func solution(_num:Int) -> String {
    
    // 내 풀이
    if num % 2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }
    
    // 좋은 풀이
    return num % 2 == 0 ? "Even" : "Odd"
    
}
