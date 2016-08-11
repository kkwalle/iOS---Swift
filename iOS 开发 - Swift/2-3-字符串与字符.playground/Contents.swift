//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//1. 字符串定义
let someString = "Hello World"
let emptyString = ""
if emptyString.isEmpty {
    print("是个空字符串")
}

//2. 字符串是值类型
//字符串在被赋值或在函数中进行传递的过程中, 会被自动拷贝一个副本

//3. 字符
let char:Character = "c"
char    //是个字符

//字符数量


//4. 连接字符串
var varString = "Hello"
varString += " World"

varString.append("!")

//5. 字符串插值
let name = "jack"
print("His name is \(name)")


//6. 比较字符串
//如果字符串以相同的顺序包含同样的字符, 则认为字符串是相等的
let str1 = "我们是一样一样滴"
let str2 = "我们是一样一样滴/"
if str1 == str2 {
    print("这俩字符串是相等的")
} else {
    print("这俩字符串不相等")
}

//7. 前缀和后缀
if str1.hasPrefix("我们") {
    print("拥有前缀是: \"我们\"")
}

if str1.hasSuffix("滴") {
    print("拥有后缀是: \"滴\"")
}


//8. 大写和小写字符串
let upStr = varString.uppercased()
let lowerStr = upStr.lowercased()

//9. Unicode
//遍历字符串, 输出字符
for char in varString.utf8 {    //.utf8 属性, 返回 String.utf8View 类型
    print(char)
}

for char in varString.unicodeScalars {
    print(char)
}






















