class Calculator {
    func add (num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func sub (num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
    
    func mul (num1: Int, num2: Int) -> Int {
        return num1 * num2
    }
    
    func div(num1: Float, num2: Float) -> Float? {
        if num2 == 0 {
            print("0으로 나눌 수 없습니다.")
            return nil
        }
        return num1 / num2
    }
    
    func mod (num1: Int, num2: Int) -> Int {
        return num1 % num2
    }
}

let calculator = Calculator()

print(calculator.add(num1: 20, num2: 10))
print(calculator.sub(num1: 20, num2: 10))
print(calculator.mul(num1: 20, num2: 10))
print(calculator.div(num1: 20, num2: 0) ?? "")
print(calculator.mod(num1: 20, num2: 7))
