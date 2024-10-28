import Foundation

/*
 문제
 정수가 담긴 리스트 num_list가 주어질 때, 모든 원소들의 곱이 모든 원소들의 합의 제곱보다 작으면 1을 크면 0을 return하도록 solution 함수를 완성해주세요.
 */

// 내 풀이
func solution(_ num_list:[Int]) -> Int {
    let count = num_list.count
    let mul = num_list.reduce(1, { $0 * $1 })
    let sum = num_list.reduce(0, { $0 + $1 })
    
    return mul < (sum * sum) ? 1 : 0
}

// 다른 풀이
func solution2(_ num_list:[Int]) -> Int {
    return num_list.reduce(1, *) < Int(pow(Double(num_list.reduce(0, +)), 2)) ? 1 : 0
}
