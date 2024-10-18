import Foundation


func solution(_ clothes:[[String]]) -> Int {
    
    var clotheskind:[String:Int] = [:]
    
    clothes.forEach { cloth in
        let key = cloth[1]
        let valueCount: Int = clotheskind[key] ?? 1
        clotheskind[key] = valueCount + 1
    }
    
    return clotheskind.reduce(1) { $0 * $1.value} - 1
}


//func solution(_ clothes:[[String]]) -> Int {
//
//    var ctype:[String:Int] = [:]
//    var result = 1
//
//    for kind in clothes{
//        if let num = ctype[kind[1]]{
//            ctype[kind[1]] = num + 1
//        }else{
//            ctype[kind[1]] = 1
//        }
//    }
//
//    for i in ctype{
//        result *= i.value + 1
//    }
//    return result - 1
//}
