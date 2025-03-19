class AddOperation {
    func add(_ number1: Int, _ number2: Int) -> Double {
        return Double(number1 + number2)
    }
}

class SubstractOperation {
    func minus(_ number1: Int, _ number2: Int) -> Double {
        return Double(number1 - number2)
    }
}

class MultiplyOperation {
    func multiply(_ number1: Int, _ number2: Int) -> Double {
        return Double(number1 * number2)
    }
}

class DivideOperation {
    func devide(_ number1: Int, _ number2: Int) -> Double {
        guard number2 != 0 else {
            return 0.0
        }
        return Double(number1) / Double(number2)
    }
}

class RemainderOperation {
    func mod(_ number1: Int, _ number2: Int) -> Double {
        guard number2 != 0 else {
            return 0
        }
        return Double (number1 % number2)
    }
}

class Calculator {
    let addOperation = AddOperation()
    let substractOperation = SubstractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainderOperation = RemainderOperation()
    
    func operate(_ operator: OperatorType, _ number1: Int, _ number2: Int) -> Double {
        switch `operator` {
        case .add:
            return addOperation.add(number1, number2)
        case .minus:
            return substractOperation.minus(number1, number2)
        case .multiply:
            return multiplyOperation.multiply(number1, number2)
        case .divide:
            return divideOperation.devide(number1, number2)
        case .mod:
            return remainderOperation.mod(number1, number2)
        }
        
    }
}

enum OperatorType {
    case add
    case minus
    case multiply
    case divide
    case mod
}

let calculator = Calculator() // 인스턴스 생성하여 변수에 할당

print(calculator.operate(.add, 1, 2))
print(calculator.operate(.minus, 1, 2))
print(calculator.operate(.multiply, 1, 2))
print(calculator.operate(.divide, 1, 0))
print(calculator.operate(.mod, 4, 3))

