//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//1. 常量和存储属性
struct Size {
    var width: Double
    var height: Double
}

let tSize = Size(width: 20, height: 20)
//tSize.width = 30    //报错, 结构体是值类型, 当结构体赋值给一个常量, 即使属性是变量也无法改变


//2. 延迟存储属性
struct Rect {
    let a: Int
    let b: Int
}
let tR = Rect(a: 10, b: 20)
tR.a


























