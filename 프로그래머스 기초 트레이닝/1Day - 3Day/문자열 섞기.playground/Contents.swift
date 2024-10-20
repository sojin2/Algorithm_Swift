import UIKit

/*
 문제
 길이가 같은 두 문자열 str1과 str2가 주어집니다.

 두 문자열의 각 문자가 앞에서부터 서로 번갈아가면서 한 번씩 등장하는 문자열을 만들어 return 하는 solution 함수를 완성해 주세요.
 */

// 내 풀이
func solution(_ str1:String, _ str2:String) -> String {
    var result = ""
    var count = 0
    var num = Int(str1.count)
    // 인덱스 1번 1번 2번 2번 ~
    for _ in 1...num {
        result += String(str1[str1.index(str1.startIndex, offsetBy: count)])
        result += String(str2[str2.index(str2.startIndex, offsetBy: count)])
        count += 1
    }
    return result
}

func solution2(_ str1: String, _ str2: String) -> String {
    var result = ""
    
    for i in 0..<str1.count {
        let index1 = str1.index(str1.startIndex, offsetBy: i)
        let index2 = str2.index(str2.startIndex, offsetBy: i)
        result += String(str1[index1])
        result += String(str2[index2])
    }
    
    return result
}


// 다른 풀이 (좋은 코드!!)
func solution3(_ str1:String, _ str2:String) -> String {
    return zip(str1, str2).map { String($0) + String($1) }.joined()
}
