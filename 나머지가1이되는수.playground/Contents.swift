import UIKit


func solution(_ n:Int) -> Int {

    for i in 2..<n {
        if n%i == 1 {
            return i
        }
    }
    return 0

}

//var n = 126
//
//var num = sqrt(Double(n-1))
//
//    if round(num) == num {
//        print(Int(num))
//    } else {
//        print(Int(n - 1))
//    }
