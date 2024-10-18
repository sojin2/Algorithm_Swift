if let input = readLine(), let num = Int(input) {
    var result = ""
    
    for n in 1...num {
        if n % 2 == 0 || n % 3 == 0 {
            result.append("1")
        } else {
            result.append("0")
        }
        if n != num {
            result.append(" ")  // 마지막 숫자 뒤에는 공백을 추가하지 않음
        }
    }
    
    print(result)
} else {
    print("잘못된 입력입니다. 자연수를 입력하세요.")
}