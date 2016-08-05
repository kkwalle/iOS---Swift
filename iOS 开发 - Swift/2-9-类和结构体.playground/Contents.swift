//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//1. 定义类和结构体
struct Resolution {
    var width = 0.0
    var height = 0.0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let hd = Resolution(width: 1080, height: 1080)
//hd.width  = 200   //常量结构体的属性无法更改

let r = VideoMode()
r.interlaced
r.name
r.resolution.width = 20 //可以直接设置结构体属性的子属性
r.resolution.width


//2. 结构体和枚举是值类型, 值类型被赋予给一个变量, 常数或者本身被传递给一个函数的时候, 实际上操作的是其的拷贝
//值类型包括: 整数, 浮点数, 布尔值, 字符串, 数组, 字典. 都是以结构体的形式在后台实现
//所有的结构体和枚举都是值类型, 这意味着他们的实例, 以及他们中的所有值类型属性, 在代码中传递过程中都会被复制
let r1 = Resolution(width: 20, height: 20)
var r2 = r1
r2.width = 40
r1.width    //上一句为 r2 赋值并不影响 r1 的值

//3. 类是引用类型
//引用类型在被赋予一个常量变量或是传递进一个参数时, 操作的是引用, 并不是拷贝.
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

tenEighty.frameRate //因为类是引用类型, 所以上一句对 frameRate 的修改, 导致 tenEighty 实例的属性的修改

alsoTenEighty.resolution.width = 200001
tenEighty.resolution.width  //引用类型的结构体属性同样会被修改.


//3. 恒等运算符: 
// * 等价于 ===        代表引用同一个类实例
// * 不等价于 !==
if alsoTenEighty === tenEighty {
    print("alsoTenEighty === tenEighty")
}


//4. 类和结构体选择
//考虑使用结构体的情况
//* 封装少量相关简单数据值
//* 在赋值或传递时, 封装的数据将会被拷贝而不是被引用
//* 任何在结构体中的值类型属性, 也将被拷贝, 而不是被引用
//* 不需要去继承已存在的类型的属性或行为



//5. 测试: 结构体中的类属性, 不应该使用, 仅测试
class tClass {
    var name: String?
}

struct tStruct {
    var tclass: tClass?
}

let tc1 = tClass()
tc1.name = "hello"
var ts1 = tStruct()
ts1.tclass = tc1
ts1.tclass?.name = "world"

print(ts1.tclass?.name)
print(tc1.name)































