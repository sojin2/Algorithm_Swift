import Foundation

/*
 문제
 정수가 담긴 리스트 num_list가 주어집니다. num_list의 홀수만 순서대로 이어 붙인 수와 짝수만 순서대로 이어 붙인 수의 합을 return하도록 solution 함수를 완성해주세요.
 */
func solution(_ num_list: [Int]) -> Int {
    var evenNumbers = ""
    var oddNumbers = ""
    
    for (index, num) in num_list.enumerated() {
        if num % 2 == 0 {
            evenNumbers += String(num)
        } else {
            oddNumbers += String(num)
        }
    }
    
    return Int(evenNumbers)! + Int(oddNumbers)!
}


// 다른 풀이
func solution2(_ num_list:[Int]) -> Int {
    let even = Int(num_list.filter { $0 % 2 == 0 }.map { String($0) }.joined())!
    let odd = Int(num_list.filter { $0 % 2 != 0 }.map { String($0) }.joined())!
    return even + odd
}
