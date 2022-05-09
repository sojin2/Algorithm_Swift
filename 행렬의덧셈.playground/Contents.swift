import UIKit

// 내 풀이
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result : [[Int]] = []

    for i in 0..<arr1.count {
        result.append([])

        for j in 0..<arr1[i].count {
            result[i].append(arr1[i][j] + arr2[i][j])

}
}

    return result
}

solution([[1,2],[2,3]], [[3,4],[5,6]])
solution([[1],[2]], [[3],[4]])


// 좋은 풀이
func solution2(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
}

solution2([[1,2],[2,3]], [[3,4],[5,6]])
solution([[1],[2]], [[3],[4]])
