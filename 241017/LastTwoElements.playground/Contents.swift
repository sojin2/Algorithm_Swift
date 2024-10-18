import Foundation

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
