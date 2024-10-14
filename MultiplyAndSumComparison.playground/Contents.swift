import Foundation

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
// 그런데 값이 같을때 처리는 따로 안 해도되겠지??
func solution2(_ num_list:[Int]) -> Int {
    // 모든 원소들 곱 < 합의 제곱 = 1 || 0
    let count = num_list.count
    let mul = num_list.reduce(1, { $0 * $1 })
    let sum = num_list.reduce(0, { $0 + $1 })
    
    return mul < (sum * sum) ? 1 : 0
}
