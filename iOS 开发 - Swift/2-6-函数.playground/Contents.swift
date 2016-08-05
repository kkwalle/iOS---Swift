//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"


//1. 简单函数定义
func sayHello(personName: String) -> String {
    return "hello " + personName + "!"
}

print(sayHello(personName: "json"))


//2. 多重输入参数
func nameAndWork(name: String, work: String) -> String {
    return "I am " + name + "," + "and I am a " + work
}

print(nameAndWork(name: "Kevin", work: "Programmer"))

//3. 无参函数
func sayHelloWorld() -> String {
    return "Hello World"
}

print(sayHelloWorld())

//4. 无返回值函数
func sayGoodbye(name: String) {
    print("Goodbye, \(name)")
}

let a = sayGoodbye(name: "jack")    //无返回值函数其实返回了一个空的元组, 用()表示
a   //一个空的元组 ()

//5. 多重返回值函数
func countss(stringss: String) -> (vowels: Int, others: Int) {
    var vowels = 0, others = 0
    for character in stringss.utf8 {
        print(character)
        switch String(character) {
        case "a", "e", "i", "o", "u":
            vowels += 1
        default:
            others += 1
        }
    }
    return (vowels, others)
}

let countString = countss(stringss: "hello world")

//6. 默认参数值
func join(string: String, toString: String, withJoiner: String = "+") -> String {
    return string + withJoiner + toString
}

let joinString = join(string: "hello", toString: "world")
let joinString2 = join(string: "hello", toString: "world", withJoiner: "++")

//7. 可变参数
//计算不定数量的平均数
//如果有多个参数, 可变参数应该放到最后一位
func arithmeticMean(numbers: Double...) -> Double {
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

let ari1 = arithmeticMean(numbers: 2, 4, 1, 0, 133)

//8. 常量参数 和 变量参数
//参数前加关键字 var 可以是参数作为可变副本进行操作

func alignRight(strings: String, totalLength: Int, char: Character) -> String {
    func countOfString(strings: String) -> Int {
        var count = 0
        for _ in strings.utf8 {
            count += 1
        }
        return count
    }
    
    var stringss = strings
    let countOfChar = totalLength - countOfString(strings: strings)
    for _ in 1...countOfChar {
        stringss = String(char) + stringss
    }
    return stringss
}

let aliString1 = alignRight(strings: "hello", totalLength: 20, char: "*")

//9. 输入输出参数
//关键字: inout, 只能将变量声明为输入输出参数, 在传入输入输出参数时, 需要加 & 符号, 表示这个参数可以被修改.
//语法已更改...



//10. 函数类型, 语法有更改, 类型中可以添加形式参数名称, 使用时也需要添加

func addTwoInts(a: Int, b: Int) -> Int {    //函数类型为 (Int, Int) -> Int
    return a + b
}

//使用函数类型
var mathFunc: (Int, Int) -> Int = addTwoInts
print(mathFunc(4, 9))


//11. 函数类型作为参数类型
func printMathResult(a: Int, b: Int, mathFunc: (Int, Int) -> Int) {
    print(mathFunc(a, b))
}

printMathResult(a: 30, b: 29, mathFunc: mathFunc)


//12. 函数类型作为返回类型
print("***函数类型作为返回类型***")

func stepForward(input: Int) -> Int {
    return input + 1
}
func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseFunc(forward: Bool) -> (input: Int) -> Int {
    return forward ? stepForward : stepBackward
}

var number = -10
let numberTo0Func = chooseFunc(forward: number < 0)

while number != 0 {
    number = numberTo0Func(input: number)
    print(number)
}


//13. 嵌套函数
//使用嵌套函数重写上述函数

print("***使用嵌套函数重写上述函数***")

func chooseFunc2(forward: Bool) -> (Int)->Int {
    func stepForward2(input: Int) -> Int {return input + 1}
    func stepBackward2(input: Int) -> Int {return input - 1}
    return forward ? stepForward2 : stepBackward2
}

var number2 = 5
let numberTo0Func2 = chooseFunc2(forward: number2 < 0)

while number2 != 0 {
    number2 = numberTo0Func2(number2)
    print(number2)
}










