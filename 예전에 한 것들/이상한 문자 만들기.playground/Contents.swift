import UIKit
import Foundation

// 내 풀이
func solution(_ s:String) -> String {
    var result = String()
    let array = s.components(separatedBy: " ")

    for s in array {
        for (index, c) in s.enumerated() {
            result.append(Int(index) % 2 == 0 ? c.uppercased() : c.lowercased())
        }

        result.append(" ")
    }

     result.removeLast()

    return result
}
solution("try hello world")


// 좋은 풀이
func solution2(_ s:String) -> String {
    let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
    return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
}
solution2("try hello world")
