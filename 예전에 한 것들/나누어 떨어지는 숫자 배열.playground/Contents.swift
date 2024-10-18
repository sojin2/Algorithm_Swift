import UIKit

// 내 풀이
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
var result: [Int] = []
    for i in arr {
        print(i)
        if i % divisor == 0 {
             result.append(i)
        }
    }
    
    return result.isEmpty ? [-1] : result.sorted()
}

solution([5,9,7,10], 5)
solution([2, 36, 1, 3], 5)
solution([3,2,6], 5)


// 괜찮은 풀이
func solution2(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{ $0 % divisor == 0 }
    return  array == [] ? [-1] : array
}

solution2([5,9,7,10], 5)
solution2([2, 36, 1, 3], 5)
solution2([3,2,6], 5)
