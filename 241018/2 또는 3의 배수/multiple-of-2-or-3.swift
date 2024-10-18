if let input = readLine() {
    let num = Int(input)!
    var result = ""
    for n in 1...num {
        if n % 2 == 0 || n % 3 == 0 {
            result += "1"
        } else {
            result += "0"
        }
        result += " "
    }
    print(result)
}