//// Playground - noun: a place where people can play
//
////Int、Double、Float、Bool、String，集合类型：Array和Dictionary
///*Swift增加：
//*1、元组（Tuple）：创建和传递一组数据
//*2、可选类型（Optional：处理值缺失情况
//*/
//
////常量和变量
//let maxinumNumberOfLoginAttepts = 10
//var currentLoginAttempt = 0
//
////在一行中声明多个常量或变量
//var x = 0.0, y = 0.0, z = 0.0
//
////类型标注
//var welcomeMessage: String
//welcomeMessage = "Hello"
//
////常量和变量命名
//let π = 3.14159
//let 你好 = "你好世界"
//let ？？？ = "dogcow"
//
////常量与变量名不能包含数字符号、箭头、保留的Unicode码位，连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。
////常量与变量名需要与Swift保留关键字相同，使用反引号（`）讲关键字包围的方式将其做为名字使用。
//
////更改现有变量值为其他同类型值
//var friendlyWelcome = "Hello!"
//friendlyWelcome = "Bonjour!"
//
//print(friendlyWelcome)
//println("This is a string")
//
//println("The current value of friendlyWelcome is \(friendlyWelcome)")
//
////这是一个注释
///* 这是一个多行注释
//*/
//
///* 这是第一个多行注释开头
///* 这是第二个被嵌套多行注释*/
//这是第一个多行注释的结尾*/
//
////分号：可选添加，同行多语句必须添加
//let cat = "???"; println(cat)
//
////整数: 8, 16, 32, 64位有符号和无符号类型。无符号8位--UInt8, 32位有符号Int32
////整数范围
//let minValue = UInt8.min
//let maxValue = UInt8.max
//
////Int：长度与平台原生字长相同。32位平台 Int = Int32, 64位平台 Int = Int64
////UInt:特殊无符号类型，长度与当前平台原生字长相同。建议使用Int，提高代码可复用性。
//
////浮点数：Double（64位）至少15位数字，Float（32）至少6位
//
////Swift类型安全语言
////类型推测：根据变量类型赋值推测，故大部分情况无需声明类型，常量和变量除外
//
////当推测浮点数类型时，Swift总是会选择Double而不是Float
////如果表达式同事出现整数和浮点，会被推测为Double类型
//
///*数值型字面量（具体值）
//*1.十进制：没有前缀
//*2.二进制：0b
//*3.八进制：0o
//*4.十六进制：0x
//*/
//
///*浮点字面量可选（exponent）:指数
//*1.十进制浮点：大/小写e
//*2.十六进制浮点：大/小写p
//*/
//
////十进制
//1.25e2
//1.25e-2
//
////十六进制
//0xFp2 //$15 * 2^{2}
//0xFp-2
//
//let decimalDouble = 12.1875
//let exponentDoulbe = 1.21875e1
//
///*** 十六进制带小数位不要理解，换算公式：
//*  0xC.3p0 = (12 * 16^0 + (10/16) * 0.3) * 2^0
//*/
//let hexadecimalDouble = 0xC.3p0
//
////数值类型转换
///*
//1. Int8范围 -128~127
//2. UInt8 范围 0~255
//*/
//let cannotBeNegative: UInt8 = 1
//let tooBig: Int8 = Int8.max
//
////数据类型转换：需要用当前值初始化一个期望类型的新数字
//let twoThousand: UInt16 = 2_000
//let one: UInt8 = 1
//let twoThousandAndOne = twoThousand + UInt16(one)
//
////整数与浮点数转换
//let three = 3
//let pointOneFourOneFiveNine = 0.14159
//let pi = Double(three) + pointOneFourOneFiveNine
//
////浮点转整型
//let integerPi = Int(pi)
//
////类型别名 typealias
//typealias AudioSample = UInt16
//var maxAmplitudeFound = AudioSample.min
//
////布尔值
//let orangeAreOrange = true
//let turnipsAreDelicious = false
//
//if turnipsAreDelicious {
//    println("Mmm, tasty turnips!")
//} else {
//    println("Eww,trunips are horrible.")
//}
//
//let i = 1
//if i == 1 {
//    //编译成功
//}
//
////元组（tuples）：把多个值组合成一个符合值，可以任意类型组合！
//let http404Error = (404, "Not Found")
//
////分解元组内容
//let (statusCode, statusMessage) = http404Error
//println("The status code is \(statusCode)")
//println("The status message is \(statusMessage)")
//
////取部分元组值，使用下划线'_'占位其他元素
//let (justTheStatusCode, _) = http404Error
//println("The status code is \(justTheStatusCode)")
//
////通过使用下标访问元组中的单个元素，下标从零开始
//println("The status code is \(http404Error.0)")
//println("The status message is \(http404Error.1)")
//
////定义元组，给单个元素命名：
//let http200Status = (statusCode: 200, description: "OK")
////通过名字获取元素值
//println("The status code is \(http200Status.statusCode)")
//println("The status message is \(http200Status.description)")
//
////元组适用与临时组织值，不适合复杂数据结构，建议适用类和结构体。
//
////可选 optionals，用来处理值缺失情况
//let possibleNumber = "123"
//let convertedNumber = possibleNumber.toInt()
//
////if语句以及强制解析
////当你确定可选包趋势含值之后，你可以在可选的名字后面加一个感叹号（！）来获取值。这个惊叹号表示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析：
//if (convertedNumber != nil) {
//    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
//} else {
//    println("\(possibleNumber) could not be converted to an integer")
//}
//
////可选绑定
////使用可选绑定来判断可选是否包含值，如果包含就把值赋给一个临时常量和变量。可选绑定可以用在if和while语句中来对可选的值进行判断并把值赋给一个常量或者变量。
//if let actualNumber = possibleNumber.toInt() {
//    println("\(possibleNumber) has an integer value of \(actualNumber)")
//} else {
//    println("\(possibleNumber) could not be converted to an integer")
//}
//
////nil :不能用于非可选常量和变量
//var serverResponseCode: Int? = 404
//serverResponseCode = nil
//
//var surveryAnswer: String?
//
////隐式解析可选:把想要用作可选的类型的后面的问号（String？）改成感叹号（String！）来声明隐式解析可选
////主要被用在Swift中类的构造过程中
//
////可选与隐式解析可选之间的区别
//let possibleString: String? = "An optional string."
//println(possibleString!)
//
//let assumedString: String! = "An implicitly unwrapped optional string."
//println(assumedString)
//
////判断隐式解析可选是否含值
//if assumedString != nil {
//    println(assumedString)
//}
//
////在可选绑定中使用隐式解析可选来检查并解析它的值
//if let definiteString = assumedString {
//    println(definiteString)
//}
//
////断言（assert）：结束代码运行并通过调试来找到值缺失的原因
//
////断言调试： 如果条件为true，继续运行，否则代码终止
//let age = 3
//assert(age >= 0, "A person's age cannot be less than zero")
//
////断言信息可以忽略
//assert(age >= 0)
//
////2.2 基本运算符
////浮点数取余运算：%
////表达两数之间的值区间运算符（a..b和a...b)
//
////运算符：一目、双目、三目运算符
//
////赋值运算符
//let b = 10
//var a = 5
//a = b
//
////如果赋值的右边是一个多元组，它的元素可以马上被分解多个常量或变量
//let (xy) = (1, 2)
//
////赋值操作不返回任何值
//
//if x == y {
//    println(xy)
//}
//
////数值运算默认不允许出现溢出情况，但可使用溢出运算符表达溢出情况(a&+b)
//"hello, " + "world"
//
////求余运算
////在对负数-b求余时，-b的符号会被忽略，这意味着a%b和a%-b结果相同
//9%4
//-9%4
//
////浮点求余运算
//8%(-2.5)

//***因自增需用到变量符号在上文被常量使用过（常量值无法改变），会导致出错，故注释掉之前

//自增和自减运算
//var i = 0
//++i
//
////运算符修改j后有一个返回值，前置与后置返回值不同
///*
//1. 当 ++ 前置的时候，先自增再返回
//2. 当 ++ 后置的时候，先返回再自增
//*/
//var a = 0
//let b = ++a
//let c = a++


//单目负号： 单目负号写在操作数之前，中间没有空格，切换数值正负
//单目正号： 数值保持不变

//符合赋值
var a = 1
a += 2

//比较运算符
/*
1. 等于 a == b
2. 不等于 a != b
3. 大于 a>b
4. 小于 a<b
5. 大于等于 a>=b
6. 小于等于 a<=b
*/

////每个比较运算都返回了一个标识是否成立的布尔值
//1 == 1
//2 != 1
//2 > 1
//1 < 2
//1 >= 1
//2 <= 1
//
//let name = "world"
//if name == "world" {
//    println("hello world")
//} else {
//    println("对不起， \(name), 我不认识你！")
//}
//
////三目条件运算
//let comtentHeight = 40
//let hasHeader = true
//let rowHeight = comtentHeight + (hasHeader ? 50 : 20)
////应避免在一个组合语句使用多个三目条件运算符
//
////区间运算符
////1. 闭区间运算符（a...b)：定义一个包含a到b（包括a和b）的所有值的区间
//for index in 1...5 {
//    println("\(index) times 5 is \(index * 5)")
//}
//
////半闭区间
////1.半闭区间运算符(a..<b): 定义一个从a到b的区间。只包含第一个值
//let names = ["Anna", "Alex", "Brian", "Jack"]
//let count = names.count
//for i in 0..<count {
//    println("第 \(i+1) 个人叫 \(names[i])")
//}
//
////逻辑运算
///*
//1. 逻辑非 !a
//2. 逻辑与 a && b
//3. 逻辑或 a || b
//*/
//
//let allowEntry = false
//if !allowEntry {
//    println("ACCESS DENIED")
//}
//// if !allowedEntry 语句可以读作“如果 非 allowed entry.”接下一行代码只有在如果“非 allowed entry” 为true，即 allowedEntry 为false时被执行。
//
////逻辑与（a && b)：只要任意一个值为false，整个表达式的值就为false。如果第一个值为false，那么就不会去计算第二个值，这称为“短路设计”
//let enteredDoorCode = true
//let passedRetinaScan = false
//if enteredDoorCode && passedRetinaScan {
//    println("Welcome!")
//} else {
//    println("ACCESS DENIED")
//}
//
////逻辑或
//let hasDoorKey = false
//let knowsOverridePassword = true
//if hasDoorKey || knowsOverridePassword {
//    println("Welcome!")
//} else {
//    println("ACCESS DENIED")
//}
//
////组合逻辑
//if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
//    println("Welcome!")
//} else {
//    println("ACCESS DENIED")
//}
//
////使用括号明确优先级
//if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
//    println("Welcome!")
//} else {
//    println("ACCESS DENIED")
//}

//2.3 字符串和字符
let something = "Some string literal value"

/*字符串字面量可以包含以下特殊字符
1.转义特殊字符 \0(空字符）、\\(反斜线）、\t(水平制表符）、\n(换行符）、\r(回车符）、\"(双引号）、\'（单引号）。
2.单字节Unicode标量，写成 \xnn,其中 nn为两位十六进制数。
3.双字节Unicode标量，写成 \unnnn，其中nnnn为四位十六进制数。
4.四字节Unicode标量，写成 \Unnnnnnnn,其中nnnnnnnn为八位十六进制数。
*/
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
//***let dollarSign = "\x24"

//初始化空字符串
var emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty {
    println("Nothing to see here")
}

//字符串可变性
var variableString = "Horse"
variableString += " and carriage"
let constantString = "Highlander"

//Swift的String类型是值类型。如果创建了一个新的字符串值，那么当其进行常量、变量赋值操作或在行数/方法中传递时，会进行值拷贝。在不同情况下，都会对已有字符串值创建新副本，并对该新副本进行传递或赋值。
//Swift默认字符串拷贝的方式保证了在函数/方法中传递的是字符串的值，其明确您独有该字符串的值，无论它来自哪里。您可以放心您传递的字符串本身不会被更改，除非你自己更改它。

//在实际编译时，Swift编译器会优化字符串的使用，使实际复制只发生在绝对必要的情况下，这意味着您始终可以在将字符串作为值类型的同时获得极高的性能。

//使用字符
for character in "Dog!????" {
    println(character)
}

//通过标明一个Character类型注解并通过字符字面量进行赋值，可以建立一个独立的字符常量或变量
let yenSign: Character = "￥"

//计算字符数量
let unusualMenagerie = "Koala ????, Snail ????, Penguin ????, Dromedary ????"
println("unusualMenagerie has \(countElements(unusualMenagerie)) characters")

//连接字符串和字符
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

var instruction = "look over"
instruction += string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

//字符串插值
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//比较字符串
//Swift提供了三种方式来比较字符串的值：字符串相等，前缀相等和后缀相等。

//字符串相等
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    println("There two strings are considered equal")
}

//前缀/后缀相等: 通过调用hasPerfix/hasSuffix方法检查字符串是否拥有特定前缀/后缀。两个方法均需要以字符串作为参数传入并返回Boolean值。两个方法均执行基本字符串和前缀/后缀字符串之间诸葛字符的比较操作。
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Caspulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capuler's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
    
]

//利用hasPrefix方法使用romeoAndJuliet数组来计算话剧中第一幕场景数：
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        ++act1SceneCount
    }
}
println("There are \(act1SceneCount) scenes in Act 1")

//同样，可使用hasSuffix方法来计算发生在Capulet公馆和Lawrence牢房内以及周围的场景数
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet{
    if scene.hasSuffix("Capulet's mansion") {
        ++mansionCount
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}
println("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

//Unicode
/*Swift提供了几种不同的方式来访问字符串的Unicode表示。
可以使用for-in来对字符串进行遍历，从而以Unicode字符的方式访问每一个字符值。

另外，能够以其他三种Unicode兼容的方式访问字符串的值：
1.UFT-8代码单元集合（利用字符串的uft8属性进行访问)
2.UTF-16代码单元集合（利用字符串的uft16属性进行访问）
3.21位的Unicode标量值集合（利用字符串的unicodeScalars属性访问）
*/
let dogString = "Dog!????"

//UTF-8 : UTF8View类型（8位无符号）值集合
for codeUnit in dogString.utf8 {
    print("\(codeUnit)")
}
print("\n")

//UTF-16
for codeUnit in dogString.utf16 {
    print("\(codeUnit)")
}
print("\n")

//Unicode标量（Unicode Scalars)
/*
您可以通过遍历字符串的unicodeScalars属性来访问它的Unicode标量表示。其为UnicodeScalar类型的属性。UnicodeScalarView是UnicodeScalar的集合。一个Unicode Scalar是任意的21位的Unicode代码点。
*/

//每一个UnicodeScalar拥有一个值属性，可以返回对应的21位数值，用UInt32值表示。
for scalar in dogString.unicodeScalars {
    print("\(scalar.value)")
}
print("\n")

//每个UnicodeScalar值夜可以用来构建一个新的字符串值，比如在字符串插值中使用：
for scalar in dogString.unicodeScalars {
    println("\(scalar)")
}

//集合类型
/*
1.数组：用来按顺序存储相同类型数据。
2.字典：无序存储相同类型值但需要由独有的标识符引用和寻址（键值对）
Swift语言里的数组和字典中存储的数据值类型必须明确
注意：Swift的数组结构在被声明称常量和变量或者被传入函数与方法中时会相对其他类型展现出不同的特性
*/

//数组
//数组构造语句
var shoppingList: [String] = ["Eggs", "Milk"]
//另一种写法
var shoppingLists = ["Eggs","Milk"]

//访问和修改数组
println("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    println("The shopping list is empty")
} else {
    println("The shopping list is not empty.")
}

shoppingList.append("Flour")

shoppingList += ["baking Powder"]

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem =  shoppingList[0]

shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas", "Apples"]

//调用数组的insert(alindex:)方法来在摸个具体索引值之前添加数据项：
shoppingList.insert("Maple Syrup", atIndex: 0)

//使用removeAtIndex移除某一项，并返回该移除项
let mapleSyrup = shoppingList.removeAtIndex(0)

firstItem = shoppingList[0]

//使用removeLast方法移除最后一项
let apples = shoppingList.removeLast()

//数组遍历 for-in
for item in shoppingList {
    println(item)
}

//使用enumerate函数同时需要使用每个数据项值和索引值
for (index, value) in enumerate(shoppingList) {
    println("Item \(index + 1): \(value)")
}


//创建并且构造一个数组
var someInts = [Int]()
println("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
someInts = []

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)

// 使用+ 组合两种已存在相同类型数组
var sixDouble = threeDoubles + anotherThreeDoubles

//字典
/* 字典是一种存储相同类型多重数据的存储器.字典中的数据项没有具体顺序。
Swift的字典使用时需要具体规定可以存储键和值的类型。
*/

//定义字典： Dicionary<KeyType, ValueType>,KeyType必须是可哈希的。
var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]

//读取和修改字典
println("The dictionary of airports contains \(airports.count) items.")
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

//updateValue(forKey),返回更新值之前的原值！
if let oldValue = airports.updateValue("Dublin internation", forKey: "DUB") {
    println("The old value for DUB was \(oldValue)")
}

if let airportName = airports["DUB"] {
    println("The name of the airport is \(airportName)")
} else {
    println("That airport is not the airports dictionay.")
}

airports["APL"] = "Apple Internation"
airports["APL"] = nil

//removeValueForKey: 返回被移除的Value或者在没有值的时候返回nil
if let removedValue = airports.removeValueForKey("DUB") {
    println("The removed airport's name is \(removedValue)")
} else {
    println("The airports dictionary does not contain a value for DUB.")
}

//字典遍历
for airportCode in airports.keys {
    println("Airpot code: \(airportCode)")
}

let airportCodes = Array(airports.keys)
let airportNames = Array(airports.values)

//创建空字典
var nameOfIntegers = Dictionary<Int, String>()
nameOfIntegers[16] = "sixteen"
nameOfIntegers = [:]

//控制流
//For-In
for index in 1...5 {
    println("\(index) times 5 is \(index * 5)")
}

//如果不需要字典范围内每一项的值，你可以使用下划线(_)替代变量名来忽略对值的访问
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    println("Hello, \(name)!")
}

//遍历字典
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    println("\(animalName)s have \(legCount) legs")
}

//for-in 遍历字符串字符
for character in "hello" {
    println(character)
}

var index: Int
for index = 0; index < 3; ++index {
    println("index is \(index)")
}
println("The loop statements were executed \(index) times")

//While循环
/*
1. while: 每次在循环开始时计算条件是否符合
2.do-while:每次在循环结束时计算条件是否符合。
*/

//蛇与梯子
//let finalSquare = 25
//var board = [Int](count: finalSquare + 1, repeatedValue: 0)
//board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
//
//var square = 0
//var diceRoll = 0
//while square < finalSquare {
//    if ++diceRoll == 7 { diceRoll = 1}
//    square += diceRoll
//    if square < board.count {
//        square += board[square]
//    }
//}
//println("Game over!")

//Do-While
//let finalSquare = 25
//var board = [Int](count: finalSquare + 1, repeatedValue: 0)
//board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
//var square = 0
//var diceRoll = 0
//
//do {
//    square += board[square]
//    if ++diceRoll == 7 {diceRoll = 1 }
//    square += diceRoll
//} while square < finalSquare
//println("Game over!")

//条件语句
//if
//var temperatureInFahrenheit = 30
//if temperatureInFahrenheit <= 32 {
//    println("It's very cold. Consider wearing a scarf.")
//}
//
//temperatureInFahrenheit = 40
//if temperatureInFahrenheit <= 32 {
//    println("It's very cold. Consider wearing a scarf.")
//} else {
//    println("It's not that cold. Wear a t-shirt.")
//}
//
//temperatureInFahrenheit = 90
//if temperatureInFahrenheit <= 32 {
//    println("It's very cold. Consider wearing a scarf.")
//} else if temperatureInFahrenheit >= 86 {
//    println("It's really warm.Don't forget to wear sunscreen.")
//} else {
//    println("It's not that cold. Wear a t-shirt.")
//}
//
//temperatureInFahrenheit = 72
//if temperatureInFahrenheit <= 32 {
//    println("It's very cold. Consider wearing a scarf")
//} else if temperatureInFahrenheit >= 86 {
//    println("It's really warm. Don't forget to wear sunscreen")
//}
//
////Switch:switch语句会尝试把某个值与若干模式进行匹配。
//let someCharacter: Character = "e"
//switch someCharacter {
//case "a", "e", "i", "o", "u":
//    println("\(someCharacter) is a vowel")
//case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
//    println("\(someCharacter) is consonant")
//default:
//    println("\(someCharacter) is note a vowel or a consonant")
//}
//
////范围匹配
//let count = 3_000_000_000_000
//let countedThings = "stars in the Milky Way"
//var natuarlCount: String
//switch count {
//case 0:
//    natuarlCount = "no"
//case 1...3:
//    natuarlCount = "a few"
//case 4...9:
//    natuarlCount = "several"
//case 10...99:
//    natuarlCount = "tens of"
//case 100...999:
//    natuarlCount = "hundreds of"
//case 1000...9999:
//    natuarlCount = "thousands of"
//default:
//    natuarlCount = "millions and millisions of"
//}
//println("There are \(natuarlCount) \(countedThings).")
//
////元组
////元组中的元素可以是值，也可以是范围。另外，使用下划线(_)来匹配所有可能的值
//let somePoint = (1, 1)
//switch somePoint {
//case (0, 0):
//    println("(0, 0) is at the origin")
//case (_, 0):
//    println("(\(somePoint.0), 0) is on the x-axis")
//case (0, _):
//    println("(0, \(somePoint.1)) is on the y-axis")
//case (-2...2, -2...2):
//    println("(\(somePoint.0), \(somePoint.1)) is inside the box")
//default:
//    println("(\(somePoint.0), \(somePoint.1)) is outside of the box")
//}
//
////允许多个case匹配同一个值，第一个被匹配到后，其他case将被忽略
//
////值绑定：case块的模式允许将匹配的值绑定到一个临时的常量或变量，这些常量或变量在该case块里就可以被引用了--这种行为被称为值绑定
//
//let anotherPoint = (2, 3)
//switch anotherPoint {
//case (let x, 0):
//    println("on the x-axis with an x value of \(x)")
//case (0, let y):
//    println("on the y-axis with a y value of \(y)")
//case let (x, y):
//    println("somewhere else at (\(x), \(y))")
//}
//
////where
////case块的模式可以使用where语句来判断额外的条件
//let yetAnotherPoint = (1, -1)
//switch yetAnotherPoint {
//case let (x, y) where x == y:
//    println("(\(x), \(y)) is on the line x == y")
//case let (x, y) where x == -y:
//    println("(\(x), \(y)) is on the line x == -y")
//case let (x, y):
//    println("(\(x), \(y)) is just some arbitrary point")
//}
//
////控制转移语句
///*
//1.continue
//2.break
//3.fallthrough
//4.return
//*/
//
////Continue: 立即停止本次循环，重新开始下次循环（并不会离开循环体）
//let puzzleInput = "great minds think alike"
//var puzzleOutput = ""
//for character in puzzleInput {
//    switch character {
//    case "a", "e", "i", "o", "u", " ":
//        continue
//    default:
//        puzzleOutput.append(character)
//    }
//}
//println(puzzleOutput)
//
////Break: 立即结束真个控制流的执行。当在一个switch代码块中使用break时，会立即中断swift代码卡执行，并且跳转到表示switch代码快结束的大括号({})后的第一行代码
//let numberSymbol: Character = "三"
//var possibleIntegerValue: Int?
//switch numberSymbol {
//case "1", "?", "一", "?":
//    possibleIntegerValue = 1
//case "2", "?", "二", "?":
//    possibleIntegerValue = 2
//case "3", "?", "三", "?":
//    possibleIntegerValue = 3
//case "4", "?","四", "?":
//    possibleIntegerValue = 4
//default:
//    break
//}
//if let integerValue = possibleIntegerValue {
//    println("The integer value of \(numberSymbol) is \(integerValue).")
//} else {
//    println("An integer value could not be found for \(numberSymbol)")
//}
//
////Fallthrough : 执行完case自动落入下一个case（需要在每个需要的case分支添加fallthrough
//let integerToDescribe = 5
//var description = "The number \(integerToDescribe) is"
//switch integerToDescribe {
//case 2, 3, 5, 7, 9, 11, 13, 17, 19:
//    description += " a prime number, and also"
//    fallthrough
//default:
//    description += " an integer."
//}
//println(description)

//Labeled Statements（嵌套循环）
//使用break指明要终止哪个循环体
//使用continue指明要影响哪个循环体

//let finalSquare = 25
//var board = [Int](count: finalSquare + 1, repeatedValue: 0)
//board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
//var square = 0
//var diceRoll = 0
//
//gameLoop: while square != finalSquare {
//    if ++diceRoll == 7 { diceRoll = 1}
//    switch square + diceRoll {
//    case finalSquare:
//        break gameLoop
//    case let newSquare where newSquare > finalSquare:
//        continue gameLoop
//    default:
//        square += diceRoll
//        square += board[square]
//    }
//}
//println("Game over!")

//函数
//函数是执行特定任务的代码字包含块。通过给定一个函数名称标识它是什么，并在需要的时候使用该名称来调用函数以执行任务。
//Swift中每个函数都由一个类型，包括函数的参数类型和返回类型。一个函数的实参必须始终和函数的形参顺序一致
//func sayHello(personName: String) -> String {
//    let greetring = "Hello, " + personName + "!"
//    return greetring
//}

//func sayHello(personName: String) -> String {
//    return "Hello " + personName + "！"
//}
//sayHello("zzq")

//函数的形参与返回值
//多形参函数
//func halfOpenRangeLength(start: Int, end: Int) -> Int {
//    return end - start
//}
//println(halfOpenRangeLength(1,10))
//
////无形参函数
//func sayHelloWorld() -> String {
//    return "hello, world"
//}
//println(sayHelloWorld())
//
////无返回值函数
//func sayGoodbye(personName: String) {
//    println("Goodbye, \(personName) ")
//}
//sayGoodbye("zzq")
//
//func printAndCount(stringToPrint: String) -> Int {
//    println(stringToPrint)
//    return countElements(stringToPrint)
//}
//
//func printWithoutCounting(stringToPrint: String) {
//    printAndCount(stringToPrint)
//}
//
//printAndCount("hello, world")
//printWithoutCounting("hello, world")
//
////多返回值函数
//func minMax(array: [Int]) -> (min: Int, max: Int) {
//    var currentMin = array[0]
//    var currentMax = array[0]
//    
//    for value in array[1..<array.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//
//let bounds = minMax([8, -6, 2, 109, 3, 71])
//println("min is \(bounds.min) and max is \(bounds.max)")
//
////函数形参名
////外部形参名： 如果为形参提供一个外部形参名称，那么外部形参名必须在调用时使用。
//func join(s1: String, s2: String, joiner: String) -> String {
//    return s1 + joiner + s2
//}
//
//join("hello", "world", ", ")
//
//func join(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
//    return s1 + joiner + s2
//}
//
//join(string: "hello", toString: "world", withJoiner: ", ")
//
////外部参数名称速记
////使用# 告诉swift使用名称相同的本地形参名称和外部形参名称
//func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
//    for character in string {
//        if character == characterToFind {
//            return true
//        }
//    }
//    return false
//}
//
//let containsAVee = containsCharacter(string: "aardvark", characterToFind: "v")

//默认形参值
//你可以为任何形参定义默认值以作为函数定义的一部分。如果已经定义了默认值，那么调用函数时就可以省略该形参
//func join(string s1:String, toString s2: String, withJoiner joiner: String = " ") -> String {
//    return s1 + joiner + s2
//}
//join(string: "hello", toString: "world", withJoiner: "-")
//join(string: "hello", toString: "world")
//

//有默认值的外部形参名
func join(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}
join("hello", "world", joiner: "-")

//可变形参
//一个可变形参可接受另个或多个指定类型的值。当函数被调用时，你可以使用可变形参来指定--形参可以用来传递任意数量的输入值。可通过在形参的类型名后面插入三个点符号（...)来编写可变形参。
func aritimeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
aritimeticMean(1, 2, 3, 4, 5)
aritimeticMean(3, 8, 19)
/*
注意：函数最多可以有一个可变形参，并且它必须出现在参数列表的最后，以避免使用多个形参调用函数引发歧义。如果你的函数有一个或多个待有默认值的形参，并且还有可变形参，请讲可变形参放在所有默认形参之后，也就是列表的最末尾。
*/

//常量形参与变量形参（函数形参默认常量）
func alignRight(var string: String, count: Int, pad: Character) -> String {
    let amountToPad = count - countElements(string)
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}
let originalString = "hello"
let paddedString = alignRight(originalString, 10, "-")


