import UIKit

// 내 풀이
func solution(_ s:String) -> String {
    var num: Int = 0
    var result: String = ""
    
    if s.count % 2 == 0 {
        num = s.count / 2
        result += "\(s[s.index(s.startIndex, offsetBy: num - 1)])\(s[s.index(s.startIndex, offsetBy: num)])"
    } else {
        num = s.count % 3
        result += "\(s[s.index(s.startIndex, offsetBy: num)])"
    }
    
    
    return result
}

solution("abcde")
solution("qwer")

// 괜찮은 풀이
func solution2(_ s:String) -> String {
    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
}


solution2("abcde")
solution2("qwer")
