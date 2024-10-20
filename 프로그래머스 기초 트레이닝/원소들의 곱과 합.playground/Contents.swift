import Foundation

/*
 문제
 정수가 담긴 리스트 num_list가 주어질 때,
 모든 원소들의 곱이 모든 원소들의 합의 제곱보다 작으면 1을 크면 0을 return하도록 solution 함수를 완성해주세요.
*/

// 첫번째 풀이
func solution1(_ num_list:[Int]) -> Int {
    // 모든 원소들 곱 < 합의 제곱 = 1 || 0
    let count = num_list.count
    let mul = num_list.reduce(1, { $0 * $1 })
    let sum = num_list.reduce(0, { $0 + $1 })
    
    if mul < (sum * sum) {
        return 1
    } else if mul > (sum * sum) {
        return 0
    } else {
        print("해당 사항이 없습니다.")
        return -1
    }
}

// 두번째 풀이
// 삼항 연사자 생각을 못 했네.. 바보다 바보
func solution2(_ num_list:[Int]) -> Int {
    // 모든 원소들 곱 < 합의 제곱 = 1 || 0
    let count = num_list.count
    let mul = num_list.reduce(1, { $0 * $1 })
    let sum = num_list.reduce(0, { $0 + $1 })
    
    return mul < (sum * sum) ? 1 : 0
}
