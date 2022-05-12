import UIKit
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }


// 내 풀이
let (a, b) = (n[0], n[1])

for _ in 0 ..< b {
    var str = ""
    for _ in 0 ..< a {
        str += "*"
    }
    print(str)
}

// 좋은 풀이
print(String(repeating: String(repeating: "*", count: n[0])+"\n", count: n[1]))
