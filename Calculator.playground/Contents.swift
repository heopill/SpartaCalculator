class Calculator {
    func calculate (op: String, num1: Int, num2: Int) -> String {
        
        switch op {
        case "+":
            return "\(num1+num2)"
        case "-":
            return "\(num1-num2)"
        case "*":
            return "\(num1*num2)"
        case "/":
            if num1 == 0 || num2 == 0 {
                return "0으로 나눌 수 없습니다."
            }
            return "\(num1/num2)"
        case "%":
            return "\(num1%num2)"
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

let divResult = calculator.calculate(op: "/", num1: 10, num2: 0)
print(divResult)

let modResult = calculator.calculate(op: "%", num1: 10, num2: 3)
print(modResult)

