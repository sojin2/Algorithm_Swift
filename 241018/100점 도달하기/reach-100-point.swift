var input = Int(readLine()!)!

var result = ""
for n in input...100 {
    switch input {
        case 90...100:
            result.append("A")
        case 80..<90:
            result.append("B")
        case 70..<80:
            result.append("C")
        case 60..<70:
            result.append("D")
        default:
            result.append("F")
    }
    result.append(" ")
    input += 1
}
print(result)