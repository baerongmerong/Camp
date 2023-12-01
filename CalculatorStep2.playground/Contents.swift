
class Calculator {
    func calculate(operator: String, firstNumber: Int, secondNumber: Int) -> Double? {
        if `operator` == "+" {
            return Double(firstNumber + secondNumber)
        }
        if `operator` == "-" {
            return Double(firstNumber - secondNumber)
        }
        if `operator` == "*" {
            return Double(firstNumber * secondNumber)
        }
        if `operator` == "/" {
            return Double(firstNumber / secondNumber)
        }
        if `operator` == "%" {
            return Double(firstNumber / secondNumber)
        }
    return nil
    }
}

let calculator = Calculator()
if let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 20) {
    print("addResult: \(addResult)")
}
if let subtractResult = calculator.calculate(operator: "-", firstNumber: 30, secondNumber: 20) {
    print("subtractResult: \(subtractResult)")
}
if let multiplyResult = calculator.calculate(operator: "*", firstNumber: 10, secondNumber: 5) {
    print("multiplyResult: \(multiplyResult)")
}
if let divideResult = calculator.calculate(operator: "/", firstNumber: 40, secondNumber: 10) {
    print("divideResult: \(divideResult)")
}
if let remainderResult = calculator.calculate(operator: "%", firstNumber: 8, secondNumber: 3) {
    print("remainderResult: \(remainderResult)")
          }
