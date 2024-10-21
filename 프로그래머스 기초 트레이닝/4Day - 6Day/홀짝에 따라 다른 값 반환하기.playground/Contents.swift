import UIKit
/*
 문제
 양의 정수 n이 매개변수로 주어질 때, n이 홀수라면 n 이하의 홀수인 모든 양의 정수의 합을 return 하고
 n이 짝수라면 n 이하의 짝수인 모든 양의 정수의 제곱의 합을 return 하는 solution 함수를 작성해 주세요.
*/

import Foundation

// 내 풀이
func solution(_ n: Int) -> Int {
    var sum = 0
    
    if n % 2 == 0 {
        for i in stride(from: 2, through: n, by: 2) {
            sum += i * i
        }
    } else {
        for i in stride(from: 1, through: n, by: 2) {
            sum += i
        }
    }
    
    return sum
}

// 다른 풀이
func solution2(_ n: Int) -> Int {
    if n % 2 == 0 {
        return (1...n)
            .filter { $0 % 2 == 0 }
            .map { $0 * $0 }
            .reduce(0, +)
    } else {
        return (1...n)
            .filter { $0 % 2 != 0 }
            .reduce(0, +)
    }
}

