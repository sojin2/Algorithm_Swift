import Foundation

/*
 문제
 문자열 my_string과 정수 k가 주어질 때,
 my_string을 k번 반복한 문자열을 return 하는 solution 함수를 작성해 주세요.
 */

// 내가 푼 방법 (히히 전에 해봤던거라 쉽게 풀렸다!)
func solution(_ my_string:String, _ k:Int) -> String {
    return String(repeating: my_string, count: k)
}

// 이런 방법두 있네?
func solution2(_ my_string:String, _ k:Int) -> String {
    return Array(repeating: my_string, count: k).joined()
}
