import UIKit

func solution(_ a:Int, _ b:Int) -> Int64 {
    var result = 0

    if a <= b {
        for i in a...b {
            result += i
        }
    } else if a >= b {
        for i in b...a {
            result += i
        }
    }

    return Int64(result)
}
