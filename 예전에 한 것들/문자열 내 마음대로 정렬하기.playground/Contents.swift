import UIKit

// 내 풀이
func solution(_ strings:[String], _ n:Int) -> [String] {
    let index = strings[0].index(strings[0].startIndex, offsetBy: n)

let result = strings.sorted(by : {(s1 : String, s2 : String) -> Bool in
        if s1[index] == s2[index] {
            return s1 < s2
        }
        else {
            return s1[index] < s2[index]
        }
    })


    return result
}
solution(["sun", "bed", "car"], 1)
solution(["abce", "abcd", "cdx"], 2)



// 좋은 풀이
func solution2(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}
solution2(["sun", "bed", "car"], 1)
solution2(["abce", "abcd", "cdx"], 2)
