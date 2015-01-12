// Playground - noun: a place where people can play

//import UIKit

// 对象和类
class Shape {
    var numberOfSides = 0
    func simpleDescription() ->String {
        return "A shape with \(numberOfSides) sides."
    }
}

//添加类的实例
var shape = Shape()
shape.numberOfSides = 7
shape.simpleDescription()

//构造函数初始化类实例,init创造构造器
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//方法重写override
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

//练习：创建NameShape的另一个子类Circle,构造器接收两个参数，一个半径一个名称，实现area和describe方法。
class Circle: NamedShape {
    var circleLength: Double
    
    init(circleLength: Double, name: String) {
        self.circleLength = circleLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    func area() -> Double {
        return circleLength * circleLength * 3.141
    }
    
    override func simpleDescription() -> String {
        return "A square with circle of length \(circleLength)"
    }
}
let ctest = Circle(circleLength: 4, name: "Circle")
ctest.area()
ctest.simpleDescription()

//属性有getter和setter
class Equilateraltriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double,name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get{
            return 3.0 * sideLength
        }
        set{
            return sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral trialge with sides of length \(sideLength)."
    }
}
var triangle = Equilateraltriangle(sideLength: 3.1, name: "a triangle")
triangle.perimeter
triangle.perimeter = 9.9
triangle.sideLength
triangle.simpleDescription()

/*在perime的setter中，新值的名字是newValue。你可以在set之后显示的设置一个名字。
 *注意Equilateraltiangle类的构造器执行了三步：
 *1.设置子类声明的属性值
 *2.调用父类构造器
 *3.改变父类定义的属性值。
*/

//如果你不需要计算属性但是需要在设置一个新值之前运行一些代码，使用willSet和didSet
class TriangleAndSquare {
    var triangle: Equilateraltriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double,name: String) {
        square = Square(sideLength: size, name: name)
        triangle = Equilateraltriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
triangleAndSquare.triangle.sideLength

/*类中的方法和一般的函数有一个重要区别，函数的参数名只在函数内部使用，但是方法的参数名需要在调用的时候显式说明（除了第一个参数）。默认情况下，方法的参数名和它在方法内部名字一样，不过你也考研定义第二个名字，这个名字呗用在方法内部。
 *
*/
class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)

//处理变量可选值时，你可以在操作（比如方法、属性和子脚本）之前加？。如果？之前的值是nil，？后面的东西都会被忽略，并且整个表达式返回nil。否则，？之后的东西都会被执行。
//在这两种情况下，整个表达式的值也是一个可选值。
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

//枚举和结构体
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() ->String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue

//使用toRaw和fromRaw函数来在原始值和枚举值之间转换
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Diamonds
let heartDescription = hearts.simpleDescription()

//使用struct创建结构体,结构体与类区别：结构体传值，类传引用。
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

//枚举实例值与原始值
enum ServerResponse {
    case Result(String,String)
    case Error(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure ...\(error)"
}

//接口和扩展
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

//类、枚举和结构体都可以实现接口
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

//使用extension来为现有类型添加功能
extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
7.simpleDescription

//你可以像使用其他命名类型一样使用接口名。当你处理类型是接口的值时，接口外定义的方法不可用。
let protocolValue: ExampleProtocol = a
protocolValue.simpleDescription

//即使protocolValue变量运行时的类型是simpleClass,编译器会把它的类型当做ExampleProtocol.这表示你不能调用类在它实现的接口之外实现的方法或属性。

//***泛型  出错……………………
func repeat<Item>(item: Item, times: Int) -> [Item] {
    var result = [Item]()
    for i in 0..<times {
        result.append(item)
    }
    return result
}
repeat("knock", 4)

//创建泛型类、枚举、结构体
enum OptionalValue<T> {
    case None
    case Some(T)
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)

//在类型名后面使用where来指定一个需求列表
func anyCommonElements <T, U where T: SequenceType, U: SequenceType, T.Generator.Element:Equatable, T.Generator.Element == U.Generator.Element> (lhs:T, rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])
