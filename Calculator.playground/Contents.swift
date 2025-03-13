class Calculator {
    var num1: Double
    var num2: Double
    
    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func result() -> Double? {
        return nil
    }
}

class AddOperation : Calculator {
    override func result() -> Double? {
        let result = num1 + num2
        return result
    }
}

class SubstractOperation : Calculator {
    override func result() -> Double? {
        let result = num1 - num2
        return result
    }
}
class MultiplyOperation : Calculator {
    override func result() -> Double? {
        let result = num1 * num2
        return result
    }
}
class DivideOperation : Calculator {
    override func result() -> Double? {
        if num1 == 0 || num2 == 0{
            return nil
        }
        let result = num1 / num2
        return result
    }
}

class RemainderOperation : Calculator {
    func resultMod() -> Int? {
        if num1 == 0 || num2 == 0{
            return nil
        }
        let result = Int(num1) % Int(num2)
        return result
    }
}

let add = AddOperation(num1: 2.3, num2: 3.2)
print(add.result()!)

let sub = SubstractOperation(num1: 4.5, num2: 3.0)
print(sub.result()!)

let mul = MultiplyOperation(num1: 10, num2: 4)
print(mul.result()!)

let div = DivideOperation(num1: 30, num2: 5)
print(div.result() ?? "0으로 나눌 수 없습니다.")

let div0 = DivideOperation(num1: 30, num2: 0) // 나누는 수가 0일 때 예외 처리 예시
print(div0.result() ?? "0으로 나눌 수 없습니다.")

let mod = RemainderOperation(num1: 10, num2: 3)
print(mod.resultMod() ?? "0으로 나눌 수 없습니다.")

let mod0 = RemainderOperation(num1: 10, num2: 0) // 나누는 수가 0일 때 예외 처리 예시
print(mod0.resultMod() ?? "0으로 나눌 수 없습니다.")
