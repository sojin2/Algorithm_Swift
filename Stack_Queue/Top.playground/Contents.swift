import Foundation

func solution(_ heights:[Int]) -> [Int] {
   
    let length = heights.count
    var result = [Int]()
    
    for i in 0..<length {
        result.append(0)
        for j in 0..<(i + 1) {
            if heights[j] > heights[i] {
                result[i] = j + 1
            }
        }
    }
    return result
}
