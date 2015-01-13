// Playground - noun: a place where people can play

//Int、Double、Float、Bool、String，集合类型：Array和Dictionary
/*Swift增加：
*1、元组（Tuple）：创建和传递一组数据
*2、可选类型（Optional：处理值缺失情况
*/

//常量和变量
let maxinumNumberOfLoginAttepts = 10
var currentLoginAttempt = 0

//在一行中声明多个常量或变量
var x = 0.0, y = 0.0, z = 0.0

//类型标注
var welcomeMessage: String
welcomeMessage = "Hello"

//常量和变量命名
let π = 3.14159
let 你好 = "你好世界"
let ？？？ = "dogcow"

//常量与变量名不能包含数字符号、箭头、保留的Unicode码位，连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。
//常量与变量名需要与Swift保留关键字相同，使用反引号（`）讲关键字包围的方式将其做为名字使用。

//更改现有变量值为其他同类型值
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

print(friendlyWelcome)
println("This is a string")

println("The current value of friendlyWelcome is \(friendlyWelcome)")

//这是一个注释
/* 这是一个多行注释
*/

/* 这是第一个多行注释开头
/* 这是第二个被嵌套多行注释*/
这是第一个多行注释的结尾*/

//分号：可选添加，同行多语句必须添加
let cat = "???"; println(cat)

//整数: 8, 16, 32, 64位有符号和无符号类型。无符号8位--UInt8, 32位有符号Int32
//整数范围
let minValue = UInt8.min
let maxValue = UInt8.max

//Int：长度与平台原生字长相同。32位平台 Int = Int32, 64位平台 Int = Int64
//UInt:特殊无符号类型，长度与当前平台原生字长相同。建议使用Int，提高代码可复用性。

//浮点数：Double（64位）至少15位数字，Float（32）至少6位

//Swift类型安全语言
//类型推测：根据变量类型赋值推测，故大部分情况无需声明类型，常量和变量除外

//当推测浮点数类型时，Swift总是会选择Double而不是Float
//如果表达式同事出现整数和浮点，会被推测为Double类型

/*数值型字面量（具体值）
*1.十进制：没有前缀
*2.二进制：0b
*3.八进制：0o
*4.十六进制：0x
*/

/*浮点字面量可选（exponent）:指数
*1.十进制浮点：大/小写e
*2.十六进制浮点：大/小写p
*/

//十进制
1.25e2
1.25e-2

//十六进制
0xFp2 //$15 * 2^{2}
0xFp-2

let decimalDouble = 12.1875
let exponentDoulbe = 1.21875e1

/*** 十六进制带小数位不要理解，换算公式：
*  0xC.3p0 = (12 * 16^0 + (10/16) * 0.3) * 2^0
*/
let hexadecimalDouble = 0xC.3p0

//数值类型转换
/*
1. Int8范围 -128~127
2. UInt8 范围 0~255
*/
let cannotBeNegative: UInt8 = 1
let tooBig: Int8 = Int8.max

//数据类型转换：需要用当前值初始化一个期望类型的新数字
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

//整数与浮点数转换
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

//浮点转整型
let integerPi = Int(pi)

//类型别名 typealias
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

//布尔值
let orangeAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    println("Mmm, tasty turnips!")
} else {
    println("Eww,trunips are horrible.")
}

let i = 1
if i == 1 {
    //编译成功
}

//元组（tuples）：把多个值组合成一个符合值，可以任意类型组合！
let http404Error = (404, "Not Found")

//分解元组内容
let (statusCode, statusMessage) = http404Error
println("The status code is \(statusCode)")
println("The status message is \(statusMessage)")

//取部分元组值，使用下划线'_'占位其他元素
let (justTheStatusCode, _) = http404Error
println("The status code is \(justTheStatusCode)")

//通过使用下标访问元组中的单个元素，下标从零开始
println("The status code is \(http404Error.0)")
println("The status message is \(http404Error.1)")

//定义元组，给单个元素命名：
let http200Status = (statusCode: 200, description: "OK")
//通过名字获取元素值
println("The status code is \(http200Status.statusCode)")
println("The status message is \(http200Status.description)")

//元组适用与临时组织值，不适合复杂数据结构，建议适用类和结构体。

//可选 optionals，用来处理值缺失情况
let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

//if语句以及强制解析
//当你确定可选包趋势含值之后，你可以在可选的名字后面加一个感叹号（！）来获取值。这个惊叹号表示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析：
if (convertedNumber != nil) {
    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}

//可选绑定
//使用可选绑定来判断可选是否包含值，如果包含就把值赋给一个临时常量和变量。可选绑定可以用在if和while语句中来对可选的值进行判断并把值赋给一个常量或者变量。
if let actualNumber = possibleNumber.toInt() {
    println("\(possibleNumber) has an integer value of \(actualNumber)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}

//nil :不能用于非可选常量和变量
var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveryAnswer: String?

//隐式解析可选:把想要用作可选的类型的后面的问号（String？）改成感叹号（String！）来声明隐式解析可选
//主要被用在Swift中类的构造过程中

//可选与隐式解析可选之间的区别
let possibleString: String? = "An optional string."
println(possibleString!)

let assumedString: String! = "An implicitly unwrapped optional string."
println(assumedString)

//判断隐式解析可选是否含值
if assumedString != nil {
    println(assumedString)
}

//在可选绑定中使用隐式解析可选来检查并解析它的值
if let definiteString = assumedString {
    println(definiteString)
}

//断言（assert）：结束代码运行并通过调试来找到值缺失的原因

//断言调试： 如果条件为true，继续运行，否则代码终止
let age = 3
assert(age >= 0, "A person's age cannot be less than zero")

//断言信息可以忽略
assert(age >= 0)






