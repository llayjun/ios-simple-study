import UIKit

var str = "Hello, playground"
// 定义常量
let name = "名字"
let constA: Float = 11.22

// 定义变量
var pass = "密码"
// 方法
let theInput = readLine()
// 定义别名
typealias otherName = Int
var distanceInt : otherName = 100
var distance = 100
print(distanceInt, terminator: "")
print("")

// optionals类型
var optionalInteger: Int?
// 相等于 var optionalInteger: Optional<Int>
// 普通判断
optionalInteger = nil
if optionalInteger != nil {
    print("你的字符串不为空\(optionalInteger!)")
} else {
    print("你的字符串为空")
}

// 可选绑定
optionalInteger = 2
if let optional = optionalInteger {
    print("你的字符串数值为\(optional)")
} else {
    print("你的字符串没有值")
}

// 强制解析
optionalInteger = 3
if optionalInteger != nil {
    print("你的字符串数值为\(optionalInteger!)")
} else {
    print("你的字符串没有值")
}

// 自动解析（将声明时候的?改成!）
var optionalIntenger1:String!
optionalIntenger1 = "测试1"
if optionalIntenger1 != nil {
    print(optionalIntenger1!)
} else {
    print("你的字符串没有值")
}

// for in 循环
for ch in "RRRR" {
    print(ch)
}

// 数组
// 空数组
var emptyArr = [Int]()
var someInts = [Int](repeating: 0, count: 4)
// 声明和初始化
var someIntss : [Int] = [10, 20, 30]
var someIntsss = [Int]()
someIntsss.append(11)
someIntsss.append(12)
someIntsss += [222]
// 修改
someIntsss[2] = 123
for chs in someIntsss {
    print(chs)
}
for (index, item) in someIntsss.enumerated() {
    print("index is \(index), item is \(item)")
}

// 合并数组
var intsA = [Int](repeating: 0, count: 2)
var intsB = [Int](repeating: 2, count: 4)
var intsC = intsA + intsB
for index in intsC {
    print("text is \(index)")
}
print("总个数为 \(intsC.count)")

// 字典
// 空字典
var someDict = [Int: String]()
// 声明和初始化
var someDict1: [Int: String] = [1:"one", 2:"two", 3:"three"]
print("获取字典的值\(someDict1[2]!)")
// 修改字典
var newDict = someDict1.updateValue("ssss", forKey: 1)
print("获取字典的值\(someDict1[1]!)")
// 移除字典
var result = someDict1.removeValue(forKey: 1)
print(result!)
// 遍历字典
for (index, item) in someDict1 {
    print("index is \(index), item is \(item)")
}
// 字典转化为数组
let dictKeys = [Int](someDict1.keys)
let dictValues = [String](someDict1.values)

// 函数
func funcTest () -> Void{
}
func funcTest1 () {
    
}
func runoob(firtst site1: String, site2: String) -> String{
    return site1
}
print(runoob(firtst: "haa", site2: "haha"))
func runss() -> Void{
    print(runoob(firtst: "haa1", site2: "haha"))
}
runss()
// 元祖作为返回值
func tupleResutl(array: [Int]) -> (min: Int, max: Int){
    return (array[0],array[1])
}
print(tupleResutl(array: [12,390]))
print("最小值为\(tupleResutl(array: [12,390]).min), 最大值为\(tupleResutl(array: [12,390]).max)")
// 可变参数类型
func changeFunc(number: Int...) {
    for value in number {
        print("可变参数输出的值为\(value)")
    }
}
changeFunc(number: 23323,3434,4343)

// 闭包
let students = {print("ahaha")}
students()
let dividd = {(val1: Int, val2: Int) -> Int in return val1/val2}
print(dividd(200, 2))

// 排序
let names = ["AT", "AE", "D", "S", "BE"]
func aaa (s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sorted(by: aaa)
print(reversed)
var reversedB = names.sorted(by: {$0 < $1})
print(reversedB)
var reversedC = names.sorted(by: <)
print(reversedC)
// 尾随闭包
print(names.sorted(){$0 > $1})

// 枚举
enum enumCase {
    case sunday
    case mondy
}

// 结构体
struct MarkStruct {
    var mark1: Int
    var mark2: Int
    var mark3: Int
}

struct MarksStructA {
    var mark: Int
    init(mark: Int) {
        self.mark = mark
    }
}

var aStruct = MarksStructA(mark: 20)
// 克隆结构体
var bStruct = aStruct
print(bStruct.mark)
aStruct.mark = 30
bStruct.mark = 40
print("aStruct的mark的值\(aStruct.mark), bStruct的mark的值\(bStruct.mark)")

// swift的类
class student {
    var student: String
    var mark1: Int
    var mark2: Int
    init(student: String, mark1: Int, mark2: Int) {
        self.student = student
        self.mark1 = mark1
        self.mark2 = mark2
    }
}

let studentRecord = student(student: "aaa", mark1: 1, mark2: 22)
studentRecord.student = "aaa2222"
print("class的\(studentRecord.student)")
// lazy加载
class classDemo {
    lazy var no = number()
    var no1: Int = 0
}
class number {
    var name: String = "aaaa"
}
var firstClassDemo = classDemo()
print("firstClassDemo的\(firstClassDemo.no.name)")

// 计算属性
class simple {
    var no1 = 222.3, no2 = 333.3
    var length = 333.2, height = 3333.3
    var middle: (Double, Double) {
        get {
            return ((length)/2, (height)/2)
        }
        set(axis) {
            no1 = axis.0 - (length/2)
            no2 = axis.1 - (height/2)
        }
    }
}
// 只读计算属性
class film {
    var head = ""
    var duration: Int = 2
    var metaInfo: [String:String] {
    return ["aaa": "aaaa", "bbb": "bbbb"]
    }
}

// 属性监听
class SamplePro {
    var count: Int = 0 {
        willSet(newValue) {
            print("计数器\(newValue)")
        }
        didSet {
            if count > oldValue {
                print("新增数\(count - oldValue)")
            }
        }
    }
    
    // 类方法
    class func adb() {
        print("aaaa")
    }
}
let value = SamplePro()
value.count = 3
value.count = 19
SamplePro.adb()

// 构造函数，可选属性类型
struct Rectangle {
    var length: Double?
    
    init(frombreadth breadth: Double) {
        length = breadth * 10
    }
    
    init(frombre bre: Double) {
        length = bre * 30
    }
    
    init(area: Double) {
        length = area
    }
    
    // 默认的
    init(_ areas: Double) {
        length = areas
    }
}
let rectarea1 = Rectangle(19.9)
print("面积为：\(rectarea1.length)")

let rectarea = Rectangle(area: 19.9)
print("面积为：\(rectarea.length)")

let rearea = Rectangle(frombre: 19.9)
print("面积为：\(rearea.length)")

let recarea = Rectangle(frombreadth: 19.9)
print("面积为：\(recarea.length)")
