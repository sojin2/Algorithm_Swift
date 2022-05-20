import UIKit
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var result = [Int]()
    
    for i in 0 ..< numbers.count {
        print("i",i)
        for j in i + 1 ..< numbers.count {
            let num = numbers[i] + numbers[j]
            if !result.contains(num) {
            result.append(num)
            }
        }
    }
    
    return result.sorted().map{$0}
}

solution([2,1,3,4,1])
solution([5,0,2,7])
