import Foundation

/*
 문제 설명
 연산 ⊕는 두 정수에 대한 연산으로 두 정수를 붙여서 쓴 값을 반환합니다. 예를 들면 다음과 같습니다.

 12 ⊕ 3 = 123
 3 ⊕ 12 = 312
 양의 정수 a와 b가 주어졌을 때, a ⊕ b와 b ⊕ a 중 더 큰 값을 return 하는 solution 함수를 완성해 주세요.

 단, a ⊕ b와 b ⊕ a가 같다면 a ⊕ b를 return 합니다.
 */

// 내 풀이 (불필요한 변환을 줄여 리소스면에서는 내 풀이가 더 좋다는군!!)
func solution(_ a: Int, _ b: Int) -> Int {
    let aSum = String(a) + String(b)
    let bSum = String(b) + String(a)
    
    return aSum >= bSum ? Int(aSum)! : Int(bSum)!
}

// 좋은 풀이 (오우.. 이런 방법도 있었다니!!)
func solution2(_ a:Int, _ b:Int) -> Int {
    return max(Int(String(a) + String(b))!, Int(String(b) + String(a))!)
}
