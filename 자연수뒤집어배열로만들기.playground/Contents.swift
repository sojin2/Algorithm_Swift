import UIKit

func solution(_ n:Int64) -> [Int] {
    return String(n).map{Int(String($0))!}.reversed()
}



var n: Int64 = 12345
var arr:Array<String> = []

for i in String(n) {
    arr.append(String(i))
}
print(arr)

var num: Int = Int(n)
var array: [Int] = []

    while num > 0 {
        array.append(num % 10)
        print("num1",num)
        num /= 10
        print(num)
    }
    
print(array)
