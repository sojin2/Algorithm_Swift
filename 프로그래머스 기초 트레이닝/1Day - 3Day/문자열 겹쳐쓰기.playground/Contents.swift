import UIKit

/*
 문제
 문자열 my_string, overwrite_string과 정수 s가 주어집니다.
 문자열 my_string의 인덱스 s부터 overwrite_string의 길이만큼을 문자열 overwrite_string으로 바꾼 문자열을
 return 하는 solution 함수를 작성해 주세요.
 */

// 내가 쓴 코드
func solution(_ my_string: String, _ overwrite_string: String, _ s: Int) -> String {

    let startIndex = my_string.index(my_string.startIndex, offsetBy: s)
    let prefix = String(my_string[..<startIndex])

    let suffixIndex = my_string.index(startIndex, offsetBy: overwrite_string.count, limitedBy: my_string.endIndex) ?? my_string.endIndex
    let suffix = String(my_string[suffixIndex...])
    
    return prefix + overwrite_string + suffix
}


func solution2(_ my_string: String, _ overwrite_string: String, _ s: Int) -> String {
    let prefix = my_string.prefix(s)
    let suffix = my_string.dropFirst(s + overwrite_string.count)
    
    return prefix + overwrite_string + suffix
}

// 다른 풀이
// replaceSubrange..? 역시 아는만큼이군..
/*
 replaceSubrange: Swift에서 문자열이나 컬렉션(Array 등)의 특정 범위를 새로운 요소로 대체할 때 사용하는 메서드
 - subrange: 바꾸고자 하는 범위입니다. (일반적으로 Range 또는 ClosedRange를 사용하여 시작과 끝을 지정)
 - newElements: 해당 범위를 대체할 요소들입니다. 문자열이나 배열 같은 시퀀스를 넣을 수 있습니다.
*/
func solution3(_ myString: String, _ overwriteString: String, _ s: Int) -> String {
    var myString = Array(myString)
    myString.replaceSubrange(s...(overwriteString.count+s-1), with: Array(overwriteString))
    return String(myString)
}
