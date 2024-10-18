import UIKit

// 내 풀이
func solution(_ a:Int, _ b:Int) -> String {
  var week = [ "THU","FRI", "SAT", "SUN", "MON", "TUE", "WED"]
  var month = [0,31,29,31,30,31,30,31,31,30,31,30,31]
  var result = 0

  for i in 0..<a{ // 0부터 a미만으로 for문을 돌린다. (month에 0을 추가했기 때문에 a-1할 필요 없음)
      result += month[i] // 요일 계산을 위해 해당 월까지의 일 수를 더한다.
  }

    result += b //b는 일 수 이므로 result에 같이 더해준다.

  return week[result % 7]// 요일은 7개 이므로 7로 나눈다. 나머지를 받아 week배열에 적용하면 요일이 나온다.

}

solution(5, 24)


// 괜찮은 풀이
func solution2(_ a:Int, _ b:Int) -> String {
    let w = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let monthDay = [ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let totalDay = monthDay[0..<a-1].reduce(0, +) + b

    return w[totalDay % 7]
    
}

solution2(5, 24)
