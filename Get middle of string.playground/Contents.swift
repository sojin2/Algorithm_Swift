import Foundation


func solution(_ s:String) -> String {
    
    if Array(s).count % 2 == 0{
        
        return String(Array(s)[s.count/2 - 1...(s.count/2)])
        
    }
    
    return String(Array(s)[s.count/2])
    
}
