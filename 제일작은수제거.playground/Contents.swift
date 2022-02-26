import UIKit

func solution(_ arr:[Int]) -> [Int] {
    var array = arr

    array.remove(at: array.firstIndex(of: array.min()!)!)
    
    return array.count == 0 ? [-1] : array
    
}
