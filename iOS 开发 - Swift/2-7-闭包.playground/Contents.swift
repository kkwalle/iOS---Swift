//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//闭包的三种形式
//* 全局函数是一个有名字但不会捕获任何值的闭包
//* 嵌套函数是一个有名字并且可以捕获其封闭函数域内值的闭包
//* 闭包表达式是一个利用轻量级语法捕获其上下文常量或变量值的匿名闭包


//1. 闭包表达式
let names = ["Chris", "Alex", "Ewa"]

//* 普通函数
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

var names1 = names.sorted(isOrderedBefore: backwards)


//* 闭包表达式语法
//  { (parameters) -> returnType in
//      statements
//  }

//* 闭包重写上述排序函数
var names2 = names.sorted(isOrderedBefore: {(s1: String, s2: String) -> Bool in return s1 > s2})
for item in names2 {
    print(item)
}

//* 根据上下文推断类型
var names3 = names.sorted(isOrderedBefore: {s1, s2 in return s1 > s2})
for item in names3 {
    print(item)
}

//* 单表达式闭包隐式返回
var name4 = names.sorted(isOrderedBefore: {s1, s2 in s1 > s2})
for item in name4 {
    print(item)
}

//* 参数名称缩写功能, 可以通过 $0, $1 来顺序调用参数
print("通过 $0, $1 来顺序调用参数")
var name5 = names.sorted(isOrderedBefore: {$0 > $1})
for item in name5 {
    print(item)
}


//* 运算符函数
//Swift 的 String 类型为大于号 > 定义字符串实现, 其作为一个函数, 接受两个 String 类型的参数, 返回一个 Bool 类型的值, 正好与 Sorted 函数的第二个参数类型吻合, 所以可以简单传入一个 > , Swift 会自动推断要使用 > 的字符串实现

print("运算符函数")
var name6 = names.sorted(isOrderedBefore: >)
for item in name6 {
    print(item)
}


//2. 尾随闭包
//将一个较长的闭包表达式传递给函数, 可以利用尾随闭包加强可读性. 尾随闭包是一个书写在函数括号之后的闭包表达式

print("尾随闭包")

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [123, 456, 7, 89]

let numberToString = numbers.map({(number: Int) -> Int in return number+1})
for item in numberToString {
    print(item)
}


//测试: 单纯函数调用
func numToString(number: Int) -> String {
    var numberVar = number
    var output = ""
    while numberVar > 0 {
        output = digitNames[numberVar%10]! + output
        numberVar /= 10
    }
    return output
}
let numToStr = numToString(number: 123)
print(numToStr)




print("尾随闭包===")
// 是有闭包一个参数, .map 后的()可省略
let numberToString2 = numbers.map {
    (number: Int) -> String in
    var numberVar = number
    var output = ""
    while numberVar > 0 {
        output = digitNames[numberVar%10]! + output
        numberVar = numberVar / 10
    }
    return output
}
for item in numberToString2 {
    print(item)
}



//3. 捕获值
print("捕获值===")
func makeIncrementor(amount: Int) -> ()->Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}

let incrementByTen = makeIncrementor(amount: 10)
incrementByTen()
incrementByTen()


let incrementBySeven = makeIncrementor(amount: 7)
incrementBySeven()
incrementBySeven()


incrementByTen()






























