import UIKit
import Foundation

// 내 풀이
func solution(_ s:String) -> Bool
{
    var pcount = 0
    var ycount = 0
    var ans:Bool = false

    for i in s {
        if i == "p" || i == "P" {
            pcount += 1
        } else if i == "y" || i == "Y" {
            ycount += 1
        }
    }

    return pcount == ycount ? true : false
}
solution("pPoooyY")
solution("Pyy")

// 좋은 풀이
func solution2(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}
solution2("pPoooyY")
solution2("Pyy")
