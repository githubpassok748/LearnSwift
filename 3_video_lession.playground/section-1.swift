// Playground - noun: a place where people can play

import Foundation

//类和结构体的定义
/*
1. 类：扩展、协议
2. 结构体：
类可继承，可在运行期间检查对象类型
*/
//
////定义类和结构体
//struct  Resolution {
//    var width = 0
//    var height = 0
//}
//
//class VidemoMode {
//    var resolution = Resolution()
//    var interlaced = false
//    var frameRate = 0.0
//    var name: String?
//}
//
////类和结构体实例化
//let someResolution = Resolution()
//let someVideoMode = VidemoMode()

//struct FixedLengthRange {
//    var firstValue: Int
//    let length: Int
//}
//
//var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
//rangeOfThreeItems.firstValue = 6
//
////延迟存储属性:节约内存资源
//class DataImporter {
//    var fileName = "data.txt"
//}
//
//class DataManager {
//    lazy var importer = DataImporter()
//    var data = [String]()
//}
//
//let manager = DataManager()
//manager.data.append("Some data")
//manager.data.append("Some more data")
//
//println(manager.importer.fileName)

////计算属性
//struct Point {
//    var x = 0.0, y = 0.0
//}
//
//struct Size {
//    var width = 0.0, height = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    
//    var center: Point {
//        get {
//            let centerX = origin.x + (size.width / 2)
//            let centerY = origin.y + (size.height / 2)
//            return Point(x: centerX, y: centerY)
//        }
//        set(newCenter) {
//            origin.x = newCenter.x - (size.width / 2)
//            origin.y = newCenter.y - (size.height / 2)
//        }
//    }
//}
//
//var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
//let initialSquareCenter = square.center
//square.center = Point(x: 15.0, y: 15.0)
//println("Square.origin is now at (\(square.origin.x), \(square.origin.y)")

////属性观察者
//class StepCounter {
//    var totalSteps: Int = 0 {
//    willSet(newTotalSteps) {
//        println("About to set totalSteps to \(newTotalSteps)")
//    }
//    didSet {
//        if totalSteps > oldValue {
//            println("Added \(totalSteps - oldValue) steps")
//        }
//    }
//    }
//}
//
//let stepCounter = StepCounter()
//stepCounter.totalSteps = 200
//stepCounter.totalSteps = 360
//stepCounter.totalSteps = 896

////静态属性
//struct AudioChannel {
//    static let thresholdLevel = 10
//    static var maxInputLevelForAllChannels = 0
//    var currentLevel: Int = 0 {
//        didSet {
//            if currentLevel > AudioChannel.thresholdLevel {
//                currentLevel = AudioChannel.thresholdLevel
//            }
//            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
//                AudioChannel.maxInputLevelForAllChannels = currentLevel
//            }
//        }
//    }
//}
//
//var leftChannel = AudioChannel()
//var rightChannel = AudioChannel()
//
//leftChannel.currentLevel = 7
//println(leftChannel.currentLevel)
//println(AudioChannel.maxInputLevelForAllChannels)
//
//rightChannel.currentLevel = 11
//println(rightChannel.currentLevel)
//println(AudioChannel.maxInputLevelForAllChannels)

////方法：与特定类型（类和结构体）相关的函数
//class Counter {
//    var count = 0
//    func incrment() {
//        count++
//    }
//    
//    func incrementBy(amount: Int) {
//        count += amount
//    }
//    func reset() {
//        count = 0
//    }
//}
//
//let counter = Counter()
//counter.incrment()
//counter.incrementBy(5)
//counter.reset()

////使用self
//struct Point {
//    var x = 0.0, y = 0.0
//    func isToTheRightOfX(x: Double) -> Bool {
//        return self.x > x
//    }
//}
//
//let somePoint = Point(x: 4.0, y: 5.0)
//
//if somePoint.isToTheRightOfX(1.0) {
//    println("This point is to the right of the line where x == 1.0")
//}

////下标
//struct TimesTable {
//    let multiplier: Int
//    subscript(index: Int) -> Int {
//        return multiplier * index
//    }
//}
//let threeTimesTable = TimesTable(multiplier: 3)
//println("six times three is \(threeTimesTable[6])")

////继承
//class Vehicle {
//    var numberOfWheel: Int
//    var maxPassengers: Int
//    
//    func description() -> String {
//        return "\(numberOfWheel) wheels; up to \(maxPassengers) passengers"
//    }
//    
//    init() {
//        numberOfWheel = 0
//        maxPassengers = 1
//    }
//}

////定义子类
//class Bicycle: Vehicle {
//    override init() {
//        super.init()
//        numberOfWheel = 2
//    }
//}
//
//let bicycle = Bicycle()
////println("Bicycle: \(bicycle.description())")
//class Car: Vehicle {
//    var speed: Double = 0.0
//    override init() {
//        super.init()
//        maxPassengers = 5
//        numberOfWheel = 4
//    }
//    override func description() -> String {
//        return super.description() + ";" + "traveling at \(speed) mph"
//    }
//}
//
//class SpeedLimitedCar: Car {
//    override var speed: Double {
//        get {
//            return super.speed
//        }
//        set {
//            super.speed = min(newValue, 40.0)
//        }
//    }
//}
//
//let limitedCar = SpeedLimitedCar()
//limitedCar.speed = 60.0
//println("SpeedLitimedCar: \(limitedCar.description())")

//
////默认构造器:构造函数无返回值
//struct Fahrenhelt {
//    var temperature: Double
////    init() {
////        temperature = 32.0
////    }
//}
//var f = Fahrenhelt(temperature: 32.0)
//println("The default temperature is \(f.temperature) Fahrentheit")

////自定义构造器
//struct Celsius {
//    var temperatureInCelsius: Double = 0.0
//    
//    init(fromFahrenheit fahrenheit: Double, aacc aaa: Int) {
//        temperatureInCelsius = (fahrenheit - 32.0 / 1.0)
//    }
//    init(fromKelvin kelvin: Double) {
//        temperatureInCelsius = kelvin - 273.15
//    }
//}
//let boilingPointOfWater = Celsius(fromFahrenheit: 212.0, aacc: 1)
//let freezingPointOfWater = Celsius(fromKelvin: 273.15)
//
////析构器: 在可选类型对象值设为nil时调用deinit()
//class Player {
//    var coinsInPurse: Int
//    
//    init(coins: Int) {
//        println("call init")
//        coinsInPurse = coins
//    }
//    func winCoins(coins: Int) {
//        coinsInPurse += 10
//    }
//    deinit {
//        coinsInPurse = 0
//    }
//}
//
//var playerOne: Player? = Player(coins: 100)
//println("coinsInPurse: \(playerOne!.coinsInPurse) coins")
//
//playerOne = nil
//
//println("PlayerOne has left the game")

////扩展、计算属性(extension)
//extension Double {
//    var km: Double { return self * 1_000.0 }
//    var m: Double { return self }
//    var cm: Double { return self/100.0 }
//    var mm: Double { return self / 1_000.0 }
//    var ft: Double { return self / 3.28084 }
//    
//}
//let oneInch = 25.4.mm
//println("One inch is \(oneInch) meters")
//let threeFeet = 3.ft
//println("Three feet is \(threeFeet) meters")
//
//let aMarathon = 42.km + 195.m
//println("A marathon is \(aMarathon) meters long")

////扩展使用构造器
//struct Size {
//    var width = 0.0, height = 0.0
//}
//struct Point {
//    var x = 0.0, y = 0.0
//}
//struct Rect {
//    var origin = Point()
//    var size = Size()
//}
//
//extension Rect {
//    init(center: Point, size: Size) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: Point(x: originX, y: originY), size: size)
//    }
//}
//
//let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))

////方法扩展
//extension Int {
//    func message() -> String {
//        var message = "";
//        switch self {
//        case 0:
//            message = "成功"
//        case -1:
//            message = "用户登录失败"
//        default:
//            message = "未知错误"
//        }
//        return message
//    }
//}
//
//3.message()
//0.message()
//(-1).message()

////协议: 定义方法和属性
//protocol FullyNamed {
//    var fullName: String { get }
//}
//
//struct Person: FullyNamed {
//    var fullName: String
//}
//let john = Person(fullName: "john Appleseed")
//
//class Starship: FullyNamed {
//    var prefix: String?
//    var name: String
//    init (name: String, prefix: String? = nil) {
//        self.name = name
//        self.prefix = prefix
//    }
//    var fullName: String {
//        return ( prefix != nil ? prefix! + " " : "") + name
//    }
//}
//
//var ncc1701 = Starship(name: "Enterprise", prefix: "USS")

////协议中使用方法
//protocol RandomNumberGenerator {
//    func random() -> Double
//}
//
//class LinearCongruentialGenerator: RandomNumberGenerator {
//    var lastRandom = 42.0
//    let m = 139968.0
//    let a = 3877.0
//    let c = 29573.0
//    func random() -> Double {
//        lastRandom = (( lastRandom * a + c) % m )
//        return lastRandom / m
//    }
//}
//let generator = LinearCongruentialGenerator ()
//println("Here's a random number: \(generator.random())")
//println("And another one: \(generator.random())")

//把协议作为类型使用
protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = (( lastRandom * a + c) % m )
        return lastRandom / m
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init (sides: Int, generator: RandomNumberGenerator ) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
for _ in 1...5 {
    println("Random dice roll is \( d6.roll())")
}
