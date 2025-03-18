# Sparta nbCamp

스파르타 코딩 클럽 내일배움캠프 1주차 개인 과제

## Swift로 계산기 만들기

<p align="center">
<img width="772" alt="Image" src="https://github.com/user-attachments/assets/0bd1af67-0241-466f-81d5-357768141221" />
</p>

## 📋 프로젝트 개요
iOS 개발 언어인 Swift를 학습해봅시다 🔥
지금까지 배운 Swift 문법을 응용해서 나만의 계산기를 만들어 봅니다!

## 사용 기술
- 언어: Swift 5.9
- 개발 환경: Xcode 16+
- 패턴 적용: 단일 책임 원칙 (SRP)

## 기능 설명
1. 기본 사칙연산 지원 (Lv1~Lv2)
   - 덧셈 (+)
   - 뺄셈 (-)
   - 곱셈 (*)
   - 나눗셈 (/)
   - 나머지 연산 (%)
  
2. 객체지향적 설계 적용 (Lv3)
   - 연산 클래스를 개별적으로 분리하여 Calculator가 직접 연산을 수행하지 않도록 구현
   - 단일 책임 원칙(SRP)을 적용하여 각 클래스가 하나의 역할(책임)만 담당

## 코드 예시
### Calculator 클래스에서 연산 클래스 활용
``` swift
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
```

### 연산 클래스 예시
``` swift
class DivideOperation {
    func devide(_ number1: Int, _ number2: Int) -> Double {
        guard number2 != 0 else {
            return 0.0
        }
        return Double(number1) / Double(number2)
    }
}
```

### 인스턴스 생성 및 테스트 예시
``` swift
let calculator = Calculator() // 인스턴스 생성하여 변수에 할당

print(calculator.operate(.add, 1, 2))
print(calculator.operate(.minus, 1, 2))
print(calculator.operate(.multiply, 1, 2))
print(calculator.operate(.divide, 1, 3))
print(calculator.operate(.mod, 4, 3))
```

## 예외 처리
- DivideOperation: 0으로 나누는 경우 연산을 수행하지 않고 0.0을 return
- ModuloOperation: 0으로 나누는 경우 연산을 수행하지 않고 0을 return

## 과제 요구사항 반영 여부
- Lv1: 기본 사칙연산 구현
- Lv2: 나머지 연산 추가 및 예외 처리
- Lv3: 연산 클래스를 분리하여 구조화
