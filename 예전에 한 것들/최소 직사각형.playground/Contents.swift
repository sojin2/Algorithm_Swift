import UIKit
import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxNum = 0
    var minNum = 0

    for i in sizes {
        maxNum = max(maxNum, i.max()!)
        minNum = max(minNum, i.min()!)
        print("maxNum",maxNum)
        print("maxNum",maxNum)
    }
    return maxNum * minNum
}

solution([[60, 50], [30, 70], [60, 30], [80, 40]])
// [[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]
// [[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]
