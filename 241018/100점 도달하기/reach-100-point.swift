if let input = readLine(), var score = Int(input) {
    var result = ""
    for n in score...100 {
        switch score {
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
        score += 1
    }
    print(result)
}