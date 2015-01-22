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


