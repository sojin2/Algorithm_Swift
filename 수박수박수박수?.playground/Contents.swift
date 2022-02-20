import UIKit

func solution(_ n:Int) -> String {
    return String(String(repeating: "수박", count: (n+1) / 2).prefix(n))
}
