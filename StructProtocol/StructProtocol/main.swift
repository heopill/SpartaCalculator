import Foundation

// Greetable 프로토콜 정의
protocol Greetable {
    func greet() -> String
}

// 프로토콜 확장을 통한 기본 구현 제공
extension Greetable {
    func greet() -> String {
        return "Hello!"
    }
}

// Person 구조체 (기본 구현 사용)
struct Person: Greetable {
    var name: String
}

// Robot 클래스 (기본 구현 사용)
class Robot: Greetable {
    var id: String

    init(id: String) {
        self.id = id
    }
}

// Alien 구조체 (기본 구현을 오버라이드하여 별도 인사 구현)
struct Alien: Greetable {
    var planet: String

    func greet() -> String {
        return "Greetings, Earthlings! I come from \(planet)."
    }
}

// 인스턴스 생성 및 테스트
let person = Person(name: "Alice")
let robot = Robot(id: "XJ-9000")
let alien = Alien(planet: "Mars")

print(person.greet()) // Hello! (기본 구현 사용)
print(robot.greet())  // Hello! (기본 구현 사용)
print(alien.greet())  // Greetings, Earthlings! I come from Mars. (고유 구현)
