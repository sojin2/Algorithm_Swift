import Foundation

var week = [ "THU","FRI", "SAT", "SUN", "MON", "TUE", "WED"]
var month = [0,31,29,31,30,31,30,31,31,30,31,30,31]


let a = Int (readLine()!)!
let b = Int (readLine()!)!
var result = 0

  for i in 0..<a{
      result += month[i]
  }

    result += b
    
  print (week[result % 7])
    

