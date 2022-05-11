import UIKit

func solution(_ s:String, _ n:Int) -> String {
    var num: UInt8 = 0
    var result: String = ""

    for i in s {
        num = i.asciiValue!
        switch num {
        case 64...91:
            num = (num + UInt8(n) - 65) % 26 + 65

        case 97...122:
            num = (num + UInt8(n) - 97) % 26 + 97
        default:
            result += "";
        }

        result += String(Unicode.Scalar(num))

    }
    return result
}
solution("AB", 1)
solution("z", 1)
solution("a B z", 4)

func solution2(_ s:String, _ n:Int) -> String {
    return s.utf8.map {
        var code = Int($0)
        switch code {
            case 65...90:
                code = (code + n - 65) % 26 + 65
            case 97...122:
                code = (code + n - 97) % 26 + 97
            default:
                break
        }
        return String(UnicodeScalar(code)!)
    }.joined()
}

solution2("AB", 1)
solution2("z", 1)
solution2("a B z", 4)
