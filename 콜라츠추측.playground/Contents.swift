import UIKit

// 내 풀이
func solution(_ num:Int) -> Int {
    var number = num
    var count = 0

  while number != 1 && count <= 500 {
    if number % 2 == 0 {
      number = number / 2
    } else {
      number = number * 3 + 1
    }

    count += 1
  }

  return number == 1 ? count : -1
}

solution(6)
solution(16)
solution(626331)


// 좋은 풀이
func solution2(_ num:Int) -> Int {
    var number = num
     if number == 1 { return 0 }
    for i in 0..<500 {
        if number%2 == 0  {
            number = number/2;
        } else {
            number = number*3 + 1;
        }
        if number == 1 { return i+1};
    }
    return -1;
}

solution2(6)
solution2(16)
solution2(626331)
