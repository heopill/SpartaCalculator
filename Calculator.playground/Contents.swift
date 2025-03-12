class Calculator {
    func calculate (op: String, num1: Double, num2: Double) -> String {
        
        switch op {
        case "+":
            var result = Int(num1 + num2)
            return "\(result)"
        case "-":
            var result = Int(num1 - num2)
            return "\(result)"
        case "*":
            var result = Int(num1 * num2)
            return "\(result)"
        case "/":
            if num1 == 0 || num2 == 0 {
                return "0으로 나눌 수 없습니다."
            }
            var result = Float(num1/num2)
            return "\(result)"
        case "%":
                var result = Int(num1) % Int(num2)
                return "\(result)"
        default:
            return "에러 발생"
        }
    }
}

let calculator = Calculator()

let addResult = calculator.calculate(op: "+", num1: 10, num2: 5)
print(addResult)

let subResult = calculator.calculate(op: "-", num1: 10, num2: 5)
print(subResult)

let mulResult = calculator.calculate(op: "*", num1: 10, num2: 5)
print(mulResult)

let divResult = calculator.calculate(op: "/", num1: 10, num2: 3)
print(divResult)

// 0으로 나누었을 때 (예외처리)
let divResult2 = calculator.calculate(op: "/", num1: 10, num2: 0)
print(divResult2)

let modResult = calculator.calculate(op: "%", num1: 10, num2: 3)
print(modResult)
