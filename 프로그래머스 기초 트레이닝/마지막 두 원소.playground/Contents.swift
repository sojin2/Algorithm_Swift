import Foundation
/*
 문제
 정수 리스트 num_list가 주어질 때,
 마지막 원소가 그전 원소보다 크면 마지막 원소에서 그전 원소를 뺀 값을 마지막 원소가 그전 원소보다 크지 않다면 마지막 원소를 두 배한 값을 추가하여 return하도록
 solution 함수를 완성해주세요.
 */

// 처음 풀이
var num: Int = 0
var add_list: [Int] = [0]
func solution(_ num_list:[Int]) -> [Int] {
    add_list = num_list
    var n = num_list.count
    if num_list[n-1] > num_list[n-2] {
        num = num_list[n-1] - num_list[n-2]
        add_list.append(num)
    } else if num_list[n-1] < num_list[n-2] {
        num = num_list[n-1] * 2
        add_list.append(num)
    }
    return add_list
}


// 두번째 풀이
func solution(_ num_list:[Int]) -> [Int] {
    var n = num_list.count
    var add_list = num_list
    let last = num_list[n - 1]
    let secondLast = num_list[n - 2]
    
    if !((2...10).contains(n) && num_list.allSatisfy({ (1...9).contains($0)})) {
        print("제한 사항을 한번 더 확인해주세요")
        return num_list
    }
    
    if last > secondLast {
        add_list.append(last - secondLast)
    } else if last <= secondLast {
        add_list.append(last * 2)
    }
    
    return add_list
}
