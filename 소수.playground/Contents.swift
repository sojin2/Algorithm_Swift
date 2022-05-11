import UIKit

// 방법 1
func primeNumber1(_ num:Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}

primeNumber1(3)
primeNumber1(20)
primeNumber1(79)

// 방법 2
func primeNumber2(_ num:Int) -> Bool {
    for i in 2..<num/2 {
        if num % i == 0 {
            return false
        }
    }
    return true
}

primeNumber2(5)
primeNumber2(63)
primeNumber2(89)


// 방법 3
func primeNumber3(_ num:Int) -> Bool {
    for i in 2...Int((sqrt(Double(num))))+1 {
        if num % i == 0 {
            return false
        }
    }
    return true
}
primeNumber3(43)
primeNumber3(62)
primeNumber3(89)

