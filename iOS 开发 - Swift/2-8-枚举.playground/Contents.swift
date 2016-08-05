//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//1. 枚举语法
//关键字: enum
enum CompassPoint {
    case North
    case South
    case East
    case West
}

var directionToHead = CompassPoint.East
directionToHead = .East    //当 directionToHead 已经被推断为 CompassPoint 类型, 则可以使用更短的 . 语法修改值

//2. 匹配枚举值和 switch 语句, 需要全部匹配, 才能编译通过.
switch directionToHead {
case .North:
    print("is North")
case .South:
    print("is South")
case .East:
    print("is East")
case .West:
    print("is West")
}


//3. 相关值
enum NameCode {
    case NameNumber(Int, Int)
    case NameString(String)
}

var nameCode1 = NameCode.NameNumber(10, 20)
//nameCode1 = .NameString("nameString hahahahaha ")

switch nameCode1 {
case .NameNumber(let a, let b):
    print("nameNumber is \(a) and \(b)")
case .NameString(let str):
    print("nameString is \(str)")
}



































