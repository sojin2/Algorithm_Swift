import Foundation

/*
 문제
 문자들이 담겨있는 배열 arr가 주어집니다.
 arr의 원소들을 순서대로 이어 붙인 문자열을 return 하는 solution함수를 작성해 주세요.
 */

func solution(_ arr:[String]) -> String {
    var result = ""
    for i in arr {
        result += i
    }
    return result
}
// 좋은 풀이 (대박.. 한줄로 할 수 있는건데.. 난 바보 다음에는 절대 안 틀려야지!)
func solution2(_ arr:[String]) -> String {
    return arr.joined()
}
