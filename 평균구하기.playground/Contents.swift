import UIKit

let arr =  [1,2,3,4]

// 내 풀이
var result = 0
for i in arr {
    result += i
}

print(Double(result) / Double(arr.count))


// 좋은 풀이
print(Double(arr.reduce(0,{ $0 + $1 })) / Double(arr.count))
print(Double(arr.reduce(0,+)) / Double(arr.count))

