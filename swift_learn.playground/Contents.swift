//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = "I'am a variable"
let b = "I'am a const"


let letInteger : int_fast32_t = 70;
let letDouble : Double = 70.0;
let letString : NSString = "Hello Swift"

let myString = "myInt is "
let myInt = 94
let myString2 = myString + String(myInt)
let myString3 = "myInt is \(myInt)"

NSLog("str:%s str2:%s str3:%s", myString, myString2, myString3)


var dictionary = ["oneName":"I am over", "twoName":"I am done"]

var getTwoValue = dictionary["twoName"]

func getUserNmae(loginName:String)->String
{
    return "Ian"
}

enum Week {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

var today="Monday"
switch today {
    case "Monday":
        print("Today is Monday");
default:
    print("No idea")
}

print(str)

print("xxx")

typealias Feet = Int
var rand_num : Feet = 2342
print(rand_num)

var f : Float
f = 2.345
print(f)

//Interesting, Chinese as variable name
var 我 = "我们"
print("\(我)是谁?")

//用来表示可能有或可能没有值
var optionalInteger : Int?
var optionalInteger2 : Optional<Int>

optionalInteger = 42
//用后缀操作符"!"来访问 这个值
print(optionalInteger!)

var mayNil : String? = nil
if mayNil != nil {
    //确定有值后加"!"来强制解析
    print(mayNil!)
} else {
    print("mayNil is really nil")
}

var op:String?
op = "It has value"
//Optional binding，判断可选类型是否包含值。如果包含就把值赋给一个临时变量或者变量
if let sure = op {
    print("Your string is: \(sure)")
} else {
    print("Your string has no value")
}

//常量使用let来声明
let constA = 42
let constB : Float = 23.234
print(constB)

//整形字面量，十进制、二进制、八进制、十六进制常量
let decimalInt = 17
let binInt = 0b10001
let octInt = 0o21   //0o
let hexInt = 0x11

//浮点型字面量
let decDouble = 12.187
let expDouble = 1.2187e1    //1.2187 * 10 ^ 1
let hexDouble = 0xC.3p1     //12.1875 * 2 ^ 1
print(hexDouble)

var A = 10
var B = 20
print("A+B is \(A+B)")

print("闭区间运算符:")
for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}
print("半开区间运算符:")
for index in 1..<5 {
    print("\(index) * 3 = \(index * 3)")
}

var instantiateStr = String("InstanceStr")
print(instantiateStr!)

var empStr = ""
let empStr2 = String()

if empStr.isEmpty || empStr2.isEmpty {
    print("empty str")
} else {
    print("str is not empty")
}

// ------------- 字符串 -----------------
var compactStr = "part1"
compactStr += " part2"
print(compactStr)

let constStr = String("const str ")
//constStr += "can't connect"


var part1 = 20
let part2 = 100
var part3 : Float = 2.343

var allParts = "\(part1) * \(part2) * \(part3)"
print(allParts)
//字符串长度
print("allParts' length is \(allParts.characters.count)")

var strCmp1 = "string1"
var strCmp2 = "string1"

if strCmp1 == strCmp2 {
    print("\(strCmp1) equals \(strCmp2)")
} else {
    print("\(strCmp1) not equals \(strCmp2)")
}

//Unicode
var unicodeStr = "我想飞走"
print("Utf-8:")
//循环输出字符串中的编码
for code in unicodeStr.utf8 {
    print("\(code)")
}

print("\n")

print("Utf-16:")
for code in unicodeStr.utf16 {
    print("\(code)")
}

//字符
let char1 : Character = "A"
let char2 : Character = "B"

print("char1 is \(char1)")
print("char2 is \(char2)")

for ch in "Hello".characters {
    print(ch)
}
//String.append(character)
var incompStr : String = "MyWorl"
var lastPiece : Character = "d"
incompStr.append(lastPiece)
print("Complete str: \(incompStr)")


//------------- 数组 ----------
//var someArray = [SomeType](count: NumberOfElements, repeatedValue: InitialValue)
//var someInts = [Int](count: 3, repeatedValue: 0)

let names = ["AT", "AE", "D", "S", "BE"]

var reversed = names.sorted()
print(reversed)

var aInts : [Int] = [10, 30, 30]

aInts.append(20)
aInts.append(100)
aInts += [233]

print(aInts[3])
//遍历数组
for i in aInts {
    print(i)
}

var aStr : [String] = ["a", "b", "c"]
for (index, item) in aStr.enumerated() {
    print("\(index): \(item)")
}


var aInts2 : [Int] = [3333]
var aInts3 = aInts + aInts2
print("aInts3 is empty?\(aInts3.isEmpty). It has \(aInts3.count) elements:")
for item in aInts3 {
    print(item)
}


//------- Dictionary --------
// var someDict = [KeyType: ValueType]()
var aDict:[Int:String] = [1:"one", 2:"Two", 3:"Three"]
print(aDict[1]!)

//遍历
for (key, value) in aDict.enumerated() {
    print("key: \(key) - \(value)")
}

//使用updateValue(forKey:)增加或更新字典的内容
var oldValue = aDict.updateValue("new one", forKey: 1)
print(aDict[1]!)
//直接赋值
aDict[2] = "new two"
print(aDict[2]!)
print("aDict has \(aDict.count) elements")
//转化为数组
let dictKeys = [Int](aDict.keys)
let dictValues = [String](aDict.values)
print("Keys:")
for (key) in dictKeys {
    print("\(key)")
}
print("values:")
for (value) in dictValues {
    print("\(value)")
}

//remove
aDict.removeValue(forKey: 2)
//aDict[2]现在是nil
print(aDict[2])
//直接赋值为nil来移除
aDict[0] = nil
print(aDict[0])

//------ 函数 --------
func runoob(site: String, dir: String) -> String {
    return site.appending(dir)
}

print(runoob(site: "www.baidu.com", dir:"/index.html"))
// 返回元组
func minMax(array: [Int]) -> (min:Int, max: Int, last:Int)
{
    var curMin = array[0]
    var curMax = array[0]
    var last = array[0]
    for value in array[1..<array.count] {
        if value < curMin {
            curMin = value
        } else if value > curMax {
            curMax = value
        }
        last = value
    }
    
    return (curMin, curMax, last)
}
let bounds = minMax(array: [8, -6, 2, 88, 22, -1232, 99])
print("min: \(bounds.min)  max:\(bounds.max) last:\(bounds.last)")

// 如果数组包含nil时的处理
func minMax2(array: [Int]) -> (min: Int, max: Int)?
{
    if array.isEmpty { return nil}
    var curMin = array[0]
    var curMax = array[0]
    
    for value in array[1..<array.count] {
        if value < curMin {
            curMin = value
        } else if value > curMax {
            curMax = value
        }
       
    }
    
    return (curMin, curMax)
}

// 外部参数名。 如提供了外部参数名，则函数在被调用时，必须使用外部参数名
func pow(firstArg a : Int, secondArg b: Int) -> Int {
    var res = a
    for _ in 1..<b {
        res = res * a
    }
    return res
}
print(pow(firstArg: 5, secondArg:3))

// 可变参数，可以接受0个或多个值。函数 调用时，可以用可变参数来指定函数参数，其数量是不确定的
// 在变量类型名后面加入 (...)的方式来定义
func vari<N>(members: N...) {
    for i in members {
        print(i)
    }
}
vari(members: 4,3,5)
vari(members: 3.4, 3.2, 0.23)
vari(members: "Google", "Baidu", "Bing")

// 一般默认在函数中定义的参数都是常量参数，只能查询使用不能改变值 
// 如果 要声明一个变量参数，可以在前面加上var
// func getName(var id:String)
/*
func swapTwoInts(var a:Int, var b:Int) {
    let t = a
    a = b
    b = t
}

func swapTwoInts2(inout a:Int, inout b:Int) {
    let t = a
    a = b
    b = t
}
var x = 0, y = 100
print("x=\(x) y=\(y)")

swapTwoInts(a:x, b:y)
print("x=\(x) y=\(y)")
*/

// 函数类型
// 定义一个叫addition的变量，参数与返回值类型均是Int,并让这个变量指向sum函数
func sum(a:Int, b:Int) -> Int{
    return a + b
}
var addition: (Int, Int)->Int = sum
print(addition(3, 2))

// 进一步，可以将函数 作为参数传递给另外一个参数
func another(addition: (Int, Int)->Int, a:Int, b:Int) {
    print("Out: \(addition(a, b))")
}
another(addition:sum, a:10, b:20)

//函数嵌套. 函数内定义一个新函数，外部的函数可以调用函数内定义的函数
func calcDecr(forDecr total: Int) -> () -> Int{
    var overallDecr = 0
    func decr()->Int {
        overallDecr -= total
        return overallDecr
    }
    return decr
}
let decrem = calcDecr(forDecr: 30)
print(decrem())



// -------- 闭包 --------
// 闭包表达式是一种利用简洁语法构建内联闭包的方式。 闭包表达式提供了一些语法优化，使得撰写闭包变得简单明了

let stud_name = { print("Swift closure") }
stud_name()

let divide = {(val1:Int, val2:Int)->Int in
      return val1 / val2
}
// 接收两个参数并返回布尔值
let result = divide(200, 2)
print(result)

//尾随闭包
// 这是一个书写在函数括号之后的闭包表达式， 函数支持将其作为最后一个参数调用
// func someFunctionThatTakesAClosure(closure: () -> Void) {
//       statements;
// }

// 捕获值
// 即使定义这些常量和变量的原域已经不存在，闭包可以在闭包函数体内引用和修改这些值
func makeIncrementor(forIncrement amount: Int) -> ()->Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)
print(incrementByTen())
print(incrementByTen())

// 闭包是引用类型
// incrementByTen是常量，但是这些常量指向的闭包仍然可以增加其捕获的变量值
// 这是因为函数和闭包都是引用类型
// 无论将函数/闭包赋值给一个常量还是变量，实际上都是将常量/变量的值设置为对应函数/闭包的引用。
// incrementByTen指向闭包的引用是一个常量，而并非闭包内容本身

//alsoIncrement会接着上面的递进继续增加
let alsoIncrementByTen = incrementByTen
print(alsoIncrementByTen())

//------- 枚举 -------
enum DaysOfWeek {
    case Sunday
    case Monday
    case Tuesday
    case Wednesday
    case Thusday
    case Friday
    case Saturday
}

var weekDay = DaysOfWeek.Thusday
// weekDay的类型可以在它被DaysOfWeek的一个可能值初始化时抢断出来。一旦weekDay被声明为一个
// DaysOfWeek，你可以使用一个缩写语法(.)将其设置为另一个DaysOfWeek的值
weekDay = .Tuesday
switch weekDay {
case .Sunday:
    print("Sunday")
case .Monday:
    print("Monday")
case .Tuesday:
    print ("TuesDay")
case .Thusday:
    print("Thusday")
default:
    print("Unknown")
}

//枚举中的相关值
// 当你在创建一个基于枚举成员的新常量或变量时才会被设置，并且每次当你这么做的时候，它的值可以是不同的
enum Student {
    case Name(String)
    case Mark(Int, Int, Int)
}
var stuDetails = Student.Name("Evil")
var stuMark = Student.Mark(98, 22, 33)
switch stuMark {
case .Name(let stuName):
    print("Student name is: \(stuName)")
case .Mark(let Mark1, let Mark2, let Mark3):
    print("Grade is: \(Mark1), \(Mark2), \(Mark3).")
}
// 枚举中的原始值
// 原始值可以是字符串、字符，或者任何整型值或浮点型值。每个原始值在它的枚举声明中必须是唯一的。
// 在原始值为整数的枚举时，不需要显式的为每一个成员赋值，Swift会自动为你赋值。
// 第一个值没有被赋初值时，将会自动置为0
enum Month: Int {
    case January , February, March, April, May, June, July, August, September, October, November, December
}
let yearMonth = Month.May.rawValue
print("Month is: \(yearMonth)")

//--------- 结构体 ----------
struct student {
    var mark1 = 100
    var makr2 = 78
    var mark3 = 94
    
}
//通过let关键字将结构体student()实例化并传递给marks
let marks = student()
print("Mark1 is \(marks.mark1)")


// 实例化时传值并克隆一个结构体
struct marksStruct {
    var mark:Int
    init(mark: Int) {
        self.mark = mark
    }
}
var aStruct = marksStruct(mark: 98)
var bStruct = aStruct //aStruct和bStruct是使用相同值的结构体
bStruct.mark = 97
print(aStruct.mark)   //98
print(bStruct.mark)   //97

struct markStruct2 {
    var mark1: Int
    var mark2: Int
    var mark3: Int
    
    init(mark1: Int, mark2: Int, mark3: Int) {
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}
print("Good grade: ")
var marks2 = markStruct2(mark1: 98, mark2: 88, mark3: 100)
print(marks2.mark1)
print(marks2.mark2)
print("Bad grade:")
var mark3 = markStruct2(mark1: 33, mark2: 44, mark3: 55)
print(mark3.mark1)


// -------------- 类 -------------
class CStudent {
    var name : String
    var age : Int
    var sex : Character
    init(name:String, age:Int, sex:Character) {
        self.name = name
        self.age = age
        self.sex = sex
    }
}
let c_stu = CStudent(name: "Ian", age: 28, sex: "M")
print("age of \(c_stu.name) is \(c_stu.age)")

class CSample : Equatable {
    let myPro : String
    init(s: String) {
        myPro = s
    }
}
func ==(lhs: CSample, rhs: CSample) -> Bool {
    return lhs.myPro == rhs.myPro
}
let spClass1 = CSample(s: "Hello")
let spClass2 = CSample(s: "Hello")
// 因为类是引用类型，有可能多个常量和变量在后台同时引用某一个类实例
// swift中为了判定两个常量或者变量是否引用同一个实例，内建了两个恒等运算符
if spClass1 === spClass2 {
    print("Same class instance \(spClass1)")
}
if spClass1 !== spClass2 {
    print("Not same class instance \(spClass2)")
}


// ------------  属性 -----------
// 存储属性： 简单说，就是存在特定类或结构体的实例里的一个常量或变量
// 可以在定义存储属性的时候指定黑夜值，也可以在构造过程中设置或个性存储属性的值
struct Number {
    var digits: Int
    let pi = 3.1415
}

var n = Number(digits: 1231)
n.digits = 222
print("\(n.digits)")
print("\(n.pi)")

// 延迟存储属性
// 使用var关键字，加lazy来标志
class CLazy {
    lazy var no = number()
}
class number {
    var name = "Ian"
}
var lazy1 = CLazy()
print(lazy1.no.name)

// 计算属性
// 它不直接存储值，而是提供一个getter来获取值，一个可选的setter

class CCalc {
    var no1 = 0.0, no2 = 0.0
    var length = 300.0, breadth = 150.0
    
    var middle : (Double, Double) {
        get {
            return (length/2, breadth/2)
        }
        set(axis) {
            no1 = axis.0 - (length/2)
            no2 = axis.1 - (breadth/2)
        }
    }
}

var c_cal = CCalc()
print(c_cal.middle)
c_cal.middle = (0.0, 10.0)
print(c_cal.no1)
print(c_cal.no2)

// 只有get没有setter的计算属性就是只读属性
class CFilm {
    var head = ""
    var duration = 0.0
    var metaInfo : [String:String] {
        return [
            "head": self.head,
            "duration" : "\(self.duration)"
        ]
    }
}

var c_film = CFilm()
c_film.head = "swift"
c_film.duration = 3.09
print(c_film.metaInfo["head"]!)
print(c_film.metaInfo["duration"]!)

// 属性观察器
// willSet 在设置新的值之前调用
// didSet 在新的值被设置后立即调用
// 它们不会在属性初始化过程中被调用
class CObserver {
    var counter : Int = 0 {
        willSet(newTotal) {
            print("counter: \(newTotal)")
        }
        didSet(oldValue) {
            if counter > oldValue {
                print("Added \(counter - oldValue)")
            }
        }
    }
}
let c_obs = CObserver()
c_obs.counter = 100
c_obs.counter = 800

// 类型属性
struct someStruct {
    static var storedProp = ""
    static var computedProp : Int {
        return 1000;
    }
}
print(someStruct.computedProp)

enum someEnum {
    static var storedProp = " "
    static var computedProp : Int {
        return 2000
    }
}

class someClass {
    class var computedProp : Int {
        return 3000
    }
}


// 在实例方法中修改值类型
// Swift中结构体和枚举是值类型，一般情况下不能在它的实例方法中被修改
// 但是如果确实需要修改的话，可以选择 mutating 这个方法，然后在方法内部改变它的属性

struct Area {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    
    mutating func scaleBy(res: Int) {
        length *= res
        breadth *= res
        print(length)
        print(breadth)
    }
}

var area1 = Area(length: 3, breadth: 4)
area1.scaleBy(res: 3)



// 方法还可以给它隐含的self属性赋值一个全新的实例，这个新实例在方法结束后将替换原来的实例
struct Area2 {
    var length = 1
    var breadth = 1
    func area() -> Int {
        return length * breadth
    }
    mutating func scaleBy(res: Int) {
        self.length *= res
        self.breadth *= res
        print(length)
        print(breadth)
    }
}
var area2 = Area2(length: 3, breadth: 4)
area2.scaleBy(res: 13)

// 类型方法
class Math {
    class func abs(number: Int) -> Int {
        if number < 0 {
            return -number
        }
        else {
            return number
        }
    }
}
struct absno {
    static func abs(number : Int ) -> Int {
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
}

let no = Math.abs(number: -35)
let num = absno.abs(number: -88)
print(no)
print(num)


//-------------- 下标脚本  ---------------
// 下标脚本 可以定义在类(Class)，结构体(Structure)和枚举(enumeration)这些目标中，可以认为是访问对象、集合或，
// 或序列的快捷方式 ，不需要再调用实例的特定的赋值和访问方法

struct subscriptExample {
    let decrement : Int
    let slogan = "Change the world!"
    // 对于 同一个目标可以定义多个下标脚本，通过索引值类型的不同进行重载，而且索引值的个数可以多个
    subscript(index: Int) -> Int{
        return decrement/index
    }
    subscript(index: String) -> String {
        return slogan.appending(index)
    }
}
let division = subscriptExample(decrement: 100)
print("100/9=\(division[9])")
var added = " Young and Beautiful"
print("added slogan = \(division[added])")


class Day {
    private var days = ["Sunday", "Monday", "Tuesday", "Wendsday",
                        "Thursday", "Friday", "Saturday"]
    subscript(index: Int) -> String {
        get {
            return days[index]
        }
        set (newValue) {
            self.days[index] = newValue
        }
    }
}
var day = Day()
print(day[0])

// 多个索引值
struct Matrix {
    let rows: Int, columns: Int
    var print: [Double]
    init(rows:Int, columns:Int) {
        self.rows = rows
        self.columns = columns
        print = Array(repeating: 0.0, count: rows*columns)
    }
    subscript(row:Int, column:Int) ->Double {
        get {
            return print[(row*columns) + column]
        }
        set(newValue) {
            print[(row*columns) + column] = newValue
        }
    }
}

var max = Matrix(rows:3, columns:4)
max[1,2] = 1209
print(max[1,2])

// --------- 继承 -----------
class StudentInfo {
    var name : String
    var age : Int
    var sex: Character
    init(name:String, age:Int, sex:Character) {
        self.name = name
        self.age = age
        self.sex = sex
    }
    func show() {
        print("\(self.name), age of \(self.age), '\(self.sex)'")
    }
}
class Tom : StudentInfo {
    init()
    {
        super.init(name: "Tom", age: 23, sex: "M")
    }
    // Override
    override func show() {
        print("Tom's age is \(self.age)")
    }
}

let tom = Tom()
tom.show()

// 重写属性
class Circle {
    var radius = 12.5
    var area : String {
        return "Circle radius: \(radius)"
    }
}
class Rectangle : Circle {
    var print = 7
    override var area : String {
        return super.area + ". And Now is \(print)"
    }
}

let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")

// 重写属性观察器
class Square : Rectangle {
    override var radius : Double {
        didSet {
            print = Int(radius/5.0) + 1
        }
    }
}
let sq = Square()
sq.radius = 100.0
print("radius is \(sq.area)")


// 防止重写
final class FCircle {
    final var radius = 12.5
    var area : String {
        return "Rect radius is \(radius)"
    }
}


//  -------- Swift 构造过程 -------
// 1. 创建初始值
// 2. 在属性定义中指定默认属性值
// 3. 初始化实例，并调用init()
struct Color {
    let red, green, blue : Int
    init(red: Int, green: Int, blue: Int) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(rgb : Int) {
        red = ((rgb>>16)&0xFF)
        green = ((rgb >> 8) & 0xFF)
        blue = (rgb & 0xFF)
    }
}
let megenta = Color(red: 10, green: 0, blue: 100)
let halfGray = Color(rgb:0x808080)
print("red: \(halfGray.red)")

// 如果不希望为构造器的某个参数提供外部名字，你可以使用下划线_来显示它的外部名字
struct Animal {
    var weight: Double
    init(fromWeight weight: Double) {
        self.weight = weight
    }
    init(_ w: Double) {
        self.weight = w
    }
}
// 无需使用外部名字
let animal = Animal(180.8)

// 可选属性类型
// 当存储属性声明为可选时，将自动化为nil
struct Sky {
    var hight: Double?
    init(_ hight: Double) {
        self.hight = hight
    }
}
let sky = Sky(18000000.223)

// 默认构造器
class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()
print("shopping item name: \(item.name)")
print("shopping item quantity: \(item.quantity)")


// 值类型的构造器代理 
// 构造器可以通过调用其它构造器来完成实例的部分构造过程。这一过程称为构造器代理，它能减少
// 多个构造器间的代码重复
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect3 {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

// 便利构造器
// 这是一种比较次要的、辅助型的构造器
// 可以定义使得构造器来调用同一个类中的指定构造器，并为其参数提供默认值。
// 你也可以定义便利构造器来创建一个特殊用途或特定输入的实例
// 使用关键字convenience
class BaseClass {
    var no1 : Int
    init (no1: Int) {
        self.no1 = no1
    }
}
class SubClass : BaseClass {
    var no2 : Int
    init(no1: Int, no2: Int) {
        self.no2 = no2
        super.init(no1: no1)
    }
    override convenience init(no1: Int) {
        self.init(no1:no1, no2:0)
    }
}
let baseClass = BaseClass(no1: 20)
let subClass = SubClass(no1:30, no2:50)
print("subClass no2 is: \(subClass.no2)")


// 类的可失败构造器
// 如果一个类、结构体或枚举类型的对象，在构造自身的过程中有可能失败，则为其定义一个可失败构造器
struct Creature {
    let species : String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}
let someCreature = Creature(species: "Horse")
if let giraffe = someCreature {
    print("Creature is \(giraffe.species)")
}

// 枚举类型的可失败构造 器
enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}
let newUnit = TemperatureUnit(symbol: "X")
if newUnit == nil {
    print("Unknown unit - X")
}

// 也可以通过在init关键字后添加“！”的方式来定义一个可失败构造器
struct MayFailStruct {
    let prop : String
    
    init!(prop: String) {
        if prop.isEmpty { return nil }
        self.prop = prop
    }
}

// ------ 类的析构 -------
var de_counter = 0
class DeBaseClass {
    init() {
        de_counter += 1
    }
    deinit {
        de_counter -= 1
    }
}
var show: DeBaseClass? = DeBaseClass()
print(de_counter)
show = nil
print(de_counter)


// ------- 可选链 ---------
// 可选链(Optional Chaining)是一种可以请求和调用属性、方法和子脚本的过程，用于请求或调用的目标可能为nil
// 可选链返回两个值：
// + 如果目标有值，调用就会成功，返回该值
// + 如果目标为nil,调用将返回nil
// 多次请求或调用可以被链接成一个链，如果任意一个节点为nil将导致整条链失效
// 通过在属性、方法或下标脚本的可选值后面放一个"?"，即可定义一个可选链

class Person {
    var residence : Residence?
}
class Residence {
    var numberOfRooms = 1
}
let john = Person()
//下面的语句使用"!"将会报错
// let roomCount = john.residence!.numberOfRooms

// 因为这种尝试获得numberOfRoms的操作有可能出现失败，可选链会返回Int?类型弄，即"可选Int". 当residence是空的时候
// 选择Int将会为空，出现无法访问numberOfRooms的情况
if let roomCount = john.residence?.numberOfRooms {
    print("John 的房间号是 \(roomCount).")
} else {
    print("未知的房间号")
}

class Person2 {
    var residence : Residence2?
}
class Residence2 {
    var rooms = [Rooms]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Rooms {
        return rooms[i]
    }
    func printNUmberOfRooms() {
        print("Room num is \(numberOfRooms)")
    }
    var address: Address?
}
class Rooms {
    let name : String
    init(name: String) {self.name = name }
}
class Address {
    var buildingName : String?
    var buildingNumber : String?
    var street : String?
    func buildingIdentifier() -> String? {
        if (buildingName != nil) {
            return buildingName
        } else if (buildingNumber != nil) {
            return buildingNumber
        } else {
            return nil
        }
    }
}

let john2 = Person2()
if ((john2.residence?.printNUmberOfRooms()) != nil) {
    print("Output room number")
} else {
    print("print room number failed")
}

let johnsHouse = Residence2()
johnsHouse.rooms.append(Rooms(name: "Living Room"))
johnsHouse.rooms.append(Rooms(name: "Kitchen"))
john2.residence = johnsHouse

if let firstRoomName = john2.residence?[0].name {
    print("first room's name is \(firstRoomName)")
} else {
    print("No index of room")
}

if let johnStreet = john2.residence?.address?.street {
    print("John's address is \(johnStreet)")
} else {
    print("No index of address")
}


// ------ 自动引用计数 (ARC) -----
// swift 使用自动引用计数(ARC)这一机制来跟踪和管理应用程序 的内存
// 通常情况 下我们不需要去手动释放内存，因为ARC会在类的实例不再被使用时，自动释放其占用的内存
// 但在有些时候我们还是需要 在代码中实现内存管理 
// ARC功能 :
// + 当每次使用init()方法创建一个类的新的实例的时候，ARC会分配一大块内存用来存储实例的信息
// + 内存中会包含实例的类型信息，以及这个实例所有相关属性的值
// + 当实例不再被使用时，ARC释放实例所占用的内存
// + 为了确保使用中的实例不会被销毁，ARC会跟踪和计算每一个实例正在被多少属性、常量、变量引用
// + 实例赋值给属性、变量或变量，它们都会创建此实例的强引用，只要强引用还在，实例是不允许被销毁的

class RefPerson {
    let name: String
    init(name : String) {
        self.name = name
        print("\(name) init")
    }
    
    deinit {
        print("\(name) is deinited")
    }
}
var refer1 : RefPerson?
var refer2 : RefPerson?
var refer3 : RefPerson?

refer1 = RefPerson(name: "Ian")
refer2 = refer1
refer3 = refer1

refer1 = nil
refer2 = nil
print("releasing last refer")
refer3 = nil

// 类实例之间的循环强引用
// 可能一个类永远不会有0个强引用 ，这种情况发生在两个类实例互相保持对方的强引用，并让对方不被销毁。
// 这就是所谓的循环强引用
class HouseHold {
    let name: String
    init(name: String) { self.name = name }
    var apartment: Apartment?
    deinit { print("\(name) is deinited") }
}

class Apartment {
    let number : Int
    init(number: Int) { self.number = number }
    var tenant: HouseHold?
    deinit { print("Apartment #\(number) is deinited") }
}

var ian: HouseHold?
var number73 : Apartment?

ian = HouseHold(name: "Ian")
number73 = Apartment(number: 73)

// 循环强引用被创建
ian!.apartment = number73
number73!.tenant = ian
// 当把这两个变量设为nil时，没有任何一个析构函数被调用
// 强引用循环阻止了Person和Apartment类实例的销毁，并在你的应用程序中造成内存泄漏
ian = nil
number73 = nil

// swift提供了两种方法来解决循环强引用
// + 弱引用
// + 无主引用
// 这两种引用允许循环引用 中的一个实例引用另外一实例而不保持强引用

//弱引用
class Module {
    let name: String
    init(name: String) { self.name = name }
    var sub: SubModule?
    deinit { print("\(name) main module") }
}
class SubModule {
    let number: Int
    init(number: Int) { self.number = number }
    weak var topic: Module?
    deinit { print("Submodule topic number is \(number)") }
    
}

var toc: Module?
var list: SubModule?
toc = Module(name: "ARC")
list = SubModule(number: 4)
toc!.sub = list
list!.topic = toc

toc = nil
list = nil

// 无主引用 
class Obj1 {
    let name : String
    var obj2 : Obj2?
    
    init(name: String) {
        self.name = name
    }
    deinit { print("\(name)") }
}
class Obj2 {
    let marks: Int
    unowned let obj1 : Obj1
    init(marks: Int, obj1: Obj1) {
        self.marks = marks
        self.obj1 = obj1
    }
    deinit { print("Obj2 gets marks \(marks)") }
}
var obj1: Obj1?
obj1 = Obj1(name: "Obj1 object")
obj1!.obj2 = Obj2(marks: 102, obj1: obj1!)
obj1 = nil


// 闭包引起的循环强引用 
// HTMLElement 类产生了类实例和asHTML默认值的闭包之间的循环强引用 
// 实例的asHTML属性持有闭包的强引用。但是，闭包在其闭包体内使用了self，因此闭包捕获了self，
// 这意味着闭包又反过来持有了HTMLElement实例的强引用。这两个对象就产生了循环强引用
// 解决半包引起的循环强引用：在定义闭包时同时定义捕获列表作为闭包的一部分，通过这种方式可以解决
// 闭包和类实例之间的循环强引用 
// 当闭包和捕获的实例总是互相引用时并且总是同时销毁时，将闭包内的捕获定义为无主引用
// 相反的，当捕获引用有时会是nil时，将闭包内的捕获定义为弱引用 
// 如果捕获的引用绝对不会置为nil,应该用无主引用，而不是弱引用
class HTMLElement {
    let name: String
    let text: String?
    lazy var asHTML: () -> String = {
        // 声明无主引用
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
    init(name:String, text:String? = nil) {
        self.name = name
        self.text = text
    }
    deinit {
        print("\(name) is being deinitalized")
    }
}
var paragraph: HTMLElement? = HTMLElement(name: "p", text: "Hello")
print(paragraph!.asHTML())
paragraph = nil


// ---------- Swift类型转换 --------------
class Subject {
    var physics: String
    init(physics: String) {
        self.physics = physics
    }
}

class Chemistry : Subject {
    var equation: String
    init(physics: String, equation: String) {
        self.equation = equation
        super.init(physics: physics)
    }
}

class Maths : Subject {
    var formulae : String
    init(physics: String, formulae: String) {
        self.formulae = formulae
        super.init(physics: physics)
    }
}

let sa = [
    Chemistry(physics:"固体物理", equation: "赫兹"),
    Maths(physics: "流体动力学", formulae: "千兆赫"),
    Chemistry(physics:"热物理学", equation:"分贝"),
    Maths(physics: "天体物理学", formulae: "兆赫"),
    Maths(physics: "微分方程", formulae: "余弦级数")
]

let samplechem = Chemistry(physics: "固体物理", equation: "赫兹")
print("实例物理学是: \(samplechem.physics)")
print("实例方程式: \(samplechem.equation)")

let samplemaths = Maths(physics: "流体动力学", formulae: "千兆赫")
print("实例物理学是: \(samplemaths.physics)")
print("实例公式是: \(samplemaths.formulae)")

var chemCount = 0
var mathsCount = 0
for item in sa {
    //类型检查用is关键字，检查一个实例是否属于特定子类型
    if item is Chemistry {
        chemCount += 1
    } else if item is Maths {
        mathsCount += 1
    }
}

print("ChemCount: \(chemCount) mathsCount: \(mathsCount)")


// 向下转型  
// ////////// 感觉 这个例子里并没有做转型啊!!!!
for item in sa {
    // 当你不确定向下转型可以成功时，用类型转换的条件形式(as?)。它总是返回一个可选值，并且若
    // 向下转型是不可能的，可选值将是nil
    if let show = item as? Chemistry {
        print("Chemistry: '\(show.physics)','\(show.equation)'")
    // 而当你可以确定向下转型一定会成功时，才使用强制形式(as!)。当你试图向下转型一个不正确的
    // 类型时，它会触发一个运行时错误
    } else if let example = item as? Maths {
        print("Math: '\(example.physics)', \(example.formulae)")
    }
}


// Any 和 AnyObject 的类型转换
// AnyObject可以代表 任何class类型的实例
// Any 可以表示 任何类型，包括方法类型(function types)

//     Any
var exampleany = [Any]()

exampleany.append(12)
exampleany.append(3.1234)
exampleany.append("Any")
exampleany.append(Chemistry(physics: "固体物理", equation: "兆赫"))

for item2 in exampleany {
    switch item2 {
    case let someInt as Int:
        print("Int is : \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("Double is : \(someDouble)")
    case let someStr as String:
        print("String is : \(someStr)")
    case let phy as Chemistry:
        print("Chemistry: \(phy.physics)")
    default:
        print("None")
    }
}

//    AnyObject
let saprint: [AnyObject] = [
    Chemistry(physics: "P1", equation: "E1"),
    Maths(physics: "M1", formulae: "F1"),
    Chemistry(physics: "P2", equation: "E2")
]
for item in saprint {
    if let show = item as? Chemistry {
        print("Chemistry: '\(show.physics)'")
    } else if let example = item as? Maths {
        print("Maths: \(example.physics)")
    }
}

// ----- Swift 扩展 ------
// 扩展就是向一个已有的类、结构体或枚举类型添加新功能
// 扩展可以对一个类型添加新的功能，但是不能重写已有的功能
// swift中的扩展可以：
// + 添加计算型属性和计算型静态属性
// + 定义实例方法和类型方法
// + 提供新的构造器
// + 定义下标
// + 定义和使用新的嵌套类型
// + 使一个已有类型符合某个协议 

// 计算型属性
extension Int {
    var add: Int { return self + 100 }
    var sub: Int { return self - 10 }
    var mul: Int { return self * 10 }
}
let addition2 = 3.add
print("Afeter addition: \(addition2)")

// 构造器
// 扩展可以向已有类型添加新的构造器
// 这可以让你扩展其它类型，将你自己的定制类型作为构造器参数，或者提供该类型的原始实现中没有包含的额外初始化选项
// 扩展可以向类中添加新的便利构造器init(),但是它们不能向类中添加新的指定构造器或析构函数deinit()
struct e_sum {
    var num1 = 100, num2 = 200
}
struct e_diff {
    var no1 = 200, no2 = 100
}
struct e_mult {
    var a = e_sum()
    var b = e_diff()
}
extension e_mult {
    init(x: e_sum, y:e_diff) {
        _ = x.num1 + x.num2
        _ = y.no1 + y.no2
    }
}
let es = e_sum(num1: 100, num2: 200)
let ed = e_diff(no1: 200, no2: 100)

let getMult = e_mult(x:es, y:ed)
print("getMult sum\(getMult.a.num1, getMult.a.num2)")

// 扩展方法
// 向已有类型添加新的实例方法和类型方法

extension Int {
    func topics(summation: () -> ()) {
        for _ in 0..<self {
            summation()
        }
    }
}
// ()->() 函数没有参数也没有返回值
4.topics(summation: {
    print("func added from extenal")
})

// 可变实例方法
// 通过扩展添加的实例访求 也可以修改该实例本身

// 如下例子，为Double类型添加了一个新的名为square的修改方法，实现原始值的平方计算
extension Double {
    mutating func square () {
        let pi = 3.1415
        self = pi * self * self
    }
}
var Trial1 = 3.3
Trial1.square()
print("Square is: \(Trial1)")



// 下标
// 扩展可以向一个已有类型添加新下标

extension Int {
    subscript ( multtable: Int) -> Int {
        var multtable = multtable
        var no1 = 1
        while multtable > 0 {
            no1 *= 10
            multtable -= 1
        }
         return (self/no1)%10
    }
}
print(12[0])

// 嵌套类型
// 扩展可以向已有的类、结构体和枚举新的嵌套类型


extension Int {
    enum calc {
        case add
        case sub
        case mult
        case div
        case anything
    }
    var print: calc {
        switch self {
        case 0:
            return .add
        case 1:
            return .sub
        case 2:
            return .mult
        case 3:
            return .div
        default:
            return .anything
        }
    }
}

func result(numb: [Int])
{
    for i in numb {
        switch i.print {
        case .add:
            print("10")
        case .sub:
            print("20")
        case .div:
            print("40")
        default:
            print("60")
        }
    }
}
result(numb: [0, 1, 2, 3, 4, 7])



// -------------  swift 协议  ------------
// 协议规定了用来实现某一特定功能所必需的方法和属性
// 任意能够满足协议要求的类型被称为遵循这个协议
// 类、结构体或枚举类型都可以遵循协议，并提供具体实现来完成协议定义的方法和功能
// 格式：
// class SomeClass : SomeSuperClass, FirstProtocol, AnotherProtocol {
// }


// 1. 对属性的规定
// 协议 用于 指定特定的实例属性或类属性，而不用指定是存储属性或计算属性。此外还必须指明是只读的还是可读可写的
// 协议中通常用var来声明变量属性，在类型声明后加上{set get}来表示属性可读可写,{get}来表明只读
protocol P1_Class {
    var marks : Int { get set }
    var result : Bool { get }
    
    func attendence() -> String
    func marksecured() -> String
}
protocol P2_Class : P1_Class {
    var present : Bool { get set }
    var subject : String { get set }
    var stname : String { get set }
}

class ProtocolClass : P2_Class {

    var marks = 96
    let result = true
    var present = false
    var subject = "Swift protocol"
    var stname = "Protocol"
    
    func attendence() -> String {
        return "The \(stname) has secured 99% attendance"
    }
    
    internal func marksecured() -> String {
        return "\(stname) has scored \(marks)"
    }
}

let p_student = ProtocolClass()
p_student.stname = "Swift"
p_student.marks = 98
p_student.marksecured()
print(p_student.marks)
print(p_student.result)
print(p_student.present)

// 2. 对mutating方法的规定
// 有时需要在方法中改变它的实例
// 例如，值类型（结构体、枚举)的实例方法中，将mutating关键字作为 函数的前缀，写在func之前，表示可以在该
// 方法中修改它所属的实例及其实例属性的值
protocol P_DaysOfWeek {
    mutating func show()
}
enum E_Days : P_DaysOfWeek {
    case sun, mon, tue, wed, thurs, fri, sat
    mutating func show() {
        switch self {
        case .sun:
            self = .sun
            print("Sunday")
        default:
            print("NO such a day")
        }
    }
}
var e_wed = E_Days.wed
e_wed.show()


// 3. 对构造器的规定
// 协议可以要求它的遵循者实现指定的构造器
// 协议构造器规定在类中的实现
// 你可以在遵循该协议的类中实现构造器，并指定其为类的指定构造器或者便利构造器。
class B_Class {
    var no1: Int
    init (no1: Int) {
        self.no1 = no1
    }
}
protocol P_Tcp {
    init(no1: Int)
}
class C_Tcp : B_Class, P_Tcp {
    // 使用required修饰符可以保证 所有的遵循该协议的子类，同样能够为构造器规定提供一个显式的实现或继承。
    // 如果一个子类重写了父类的指定构造器，并且该构造器遵循了某个协议的规定，那么该构造器的实例需要同时标
    // 注 required和override

    // 在此，因为遵循协议，需要加上"required"，因为继承自父类，需要加上"override"
    required override init(no1: Int) {
        super.init(no1 : no1)
    }
    
}


// 4. 协议类型
// 尽管协议 本身并不实现任何功能，但是协议可以被当作类型来使用
// 协议可以像其他普通类型一样使用，使用场景：
// 作为函数、方法或构造器中的参数类型或返回值类型
// 作为常量、变量或属性的类型
// 作为数组、字典或其他容器中的元素类型
protocol Generator {
    associatedtype members
    func next() -> members?
}
var item_iter = [10, 20, 30].makeIterator()
while let x = item_iter.next() {
    print(x)
}
for lists in [1, 2, 3].map({i in i * 5}) {
    print(lists)
}
print([100, 200, 300])
print([1, 2, 3].map({i in i*10}))

// 5. 在扩展中添加协议成员
// 我们可以通过扩展来扩充已存在类型
// 扩展可以为已存在的类型添加属性、方法、下标脚本、协议等成员
protocol AgeClasifcationProtocol {
    var age: Int { get }
    func ageType() -> String
}
class Person3 {
    let firstname : String
    let lastname : String
    var age : Int
    init(firstname: String, lastname: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.age = 10
    }
}
extension Person3 : AgeClasifcationProtocol {
    func fullname() -> String {
        var c: String
        c = firstname + " " + lastname
        return c
    }
    func ageType() -> String {
        switch age {
        case 0...2:
            return "Baby"
        case 2...12:
            return "Child"
        case 13...19:
            return "Teenager"
        case let x where x > 65:
            return "Elderly"
        default:
            return "Normal"
        }
    }
}
var person_3 = Person3(firstname: "Ian", lastname: "lan")
print(person_3.ageType())

// 6. 协议的继承
// 协议能够继承一个或多个其他协议，可以在继承的协议基础上增加新的内容要求
// protocol InheritingProtocol : SomeProtocol, AnotherProtocol { // 协议定义 }

// 7. 类的专属协议 
// 你可以在协议的继承列表中，通过添加 class 关键字，限制协议只能适配到类(class)类型
// 该class关键字必须是第一个出现在协议的继承列表中，其后才是其他继承协议 
// protocol SomeClassOnlyProtocol : class, someInheritedProtocol

// 8. 协议合成
// swift支持合成多个协议，这在我们需要同时遵循多个协议时非常有用
protocol Stname {
    var name : String { get }
}
protocol Stage {
    var age : Int { get }
}
struct Person4 : Stname, Stage {
    var name : String
    var age : Int
}

//  9. 检查协议的一致性
// 你可以使用is和as操作符来检查是否遵循某一协议或强制转化为某一类型
// + is 操作符用来检查实例是否遵循了某个协议 

protocol HasArea {
    var area :  Double { get }
}
class Circle2 : HasArea {
    let pi = 3.14159
    var radius: Double
    var area: Double { return pi * radius * radius }
    init(radius: Double) { self.radius = radius }
}
class Animal2  {
    var legs : Int
    init(legs: Int) { self.legs = legs }
}
let objects: [AnyObject] = [
    Circle2(radius: 2.0),
    Animal2(legs: 4)
]
for o in objects {
    // 对迭代出的每一个元素进行检查，看它是否遵循了HasArea协议
    if let objectWithArea = o as? HasArea {
        print("Square is \(objectWithArea.area)")
    } else {
        print("No square")
    }
}




// ------------- Swift 泛型 -----------------
