import UIKit
import Darwin

// 내 플이
func solution(_ s:String) -> Bool {
   return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}

solution("a234")
solution("1234")
