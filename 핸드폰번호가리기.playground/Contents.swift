import UIKit


func solution(_ phone_number:String) -> String {
    return String(repeating: "*", count: phone_number.count-4) + phone_number.suffix(4)
}

solution("01033334444")
solution("027778888")
