//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//一. 循环

//1. for in 循环
for index in 1...5 {
    print("\(index) time 5 is \(index * 5)")
}
//如果不需要知道 index 的值, 可以使用 _ 代替
let base = 3
let power = 10
var answer = 1
for _ in 1...answer {
    answer *= power
}
print("\(base) \(power) times is \(answer)")

//遍历数组
let names = ["name1", "name2", "name3"]
for name in names {
    print(name)
}

//遍历字典
let numberOfLeg = ["spider" : 8, "ant" : 6, "cat" : 4]
for (aniName, legCount) in numberOfLeg {
    print("\(aniName) have \(legCount) legs")
}

//2. while 循环
var index = 0
while index < 9 {
    print("index == \(index)")
    index += 1
}

//二. 条件语句

//1. if
let num = 10
if num > 4 {
    print("num is big than 4")
} else {
    print("num is small than 4")
}

//2. switch
//* 注意: switch 分支必须是完备的
enum namePart {
    case firstName
    case lastName
}

let fir = namePart.firstName
switch fir {
case namePart.firstName:
    print("\(fir) is firstName")
default:
    print("\(fir) is lastName")
}

//区间匹配
let score = 95
switch score {
case 90...100:
    print("优秀")
case 70...90:
    print("还不错")
case 60...70:
    print("及格了")
default:
    print("不及格")
}

//元组
let somePoint = (1, 2)
switch somePoint {
case (0, 0):
    print("在原点上")
case (_, 0):
    print("在 X轴上")
case (0, _):
    print("在Y轴上")
case (-2...2, -2...2):
    print("在一个4*4的矩形内")
default:
    print("不在上边说的那个矩形里")
}


//值绑定
let somePoint2 = (2, 2)
switch somePoint2 {
case (let x, 0):
    print("在 X 轴上, x = \(x)")
case (0, let y):
    print("在 Y 轴上, y = \(y)")
default:
    print("这个点不在轴上")
}

//where 条件判定
switch somePoint2 {
case let(x, y) where x == y:
    print("这个点的 x = y")
default:
    print("这个点的 x != y")
}


//三. 控制转移语句
//continue: 结束本次循环, 继续下次循环
//break: 立刻结束控制流的执行. 
//fallthrough:
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)


//标签: 
outFor: for indexOut in 0...2 {
    print("indexOut = \(indexOut)")
    inFor: for indexIn in 0...2 {
        if indexIn == 1 {
            //break
            //break outFor
            //continue
            //continue outFor
        }
        print("indexIn = \(indexIn)")
    }
}

































