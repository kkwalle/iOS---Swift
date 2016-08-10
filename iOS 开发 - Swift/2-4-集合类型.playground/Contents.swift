//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//一. 数组
//1. 数组的创建, 修改, 读取
var shoppingList = ["eggs", "milk"]
shoppingList.count
shoppingList.underestimatedCount
shoppingList.isEmpty
shoppingList.append("Flour")
shoppingList += ["Baking"]
var firstItem = shoppingList[0]
shoppingList[0] = "six eggs"
shoppingList[0...2] = ["Apple", "Banana"]
shoppingList.insert("Orange", at: 0)
let toRemove = shoppingList.remove(at: 0)
//移除最后一项
let lastToRemove = shoppingList.removeLast()

//2. 遍历数组
for item in shoppingList {
    print(item)
}

for (index, item) in shoppingList.enumerated() {
    print("\(index) item: \(item)")
}

//构造一个特定类型的空数组
var someInt = [Int]()

//特定个数的有默认值的数组
var threeDoubles = [Double](repeatElement(2.5, count: 3))



//二. 集合, Set
//集合用来存储相同类型顺序不确定的值, 当集合元素顺序不重要时或者需要确保元素是唯一不重复值得时候, 可以将集合当做另一种形式的数组

//1. 创建
var charSet = Set<Character>()
charSet.insert("a")

var ballSet: Set = ["basketBall", "football"]

//2. 访问 Set
ballSet.count
ballSet.isEmpty
let inserResult = ballSet.insert("pingpangBall")    //插入结果, 返回元组
inserResult.0
let removeResult = ballSet.remove("football")   //如果存在, 则返回删除的项, 如果不存在则返回 nil
if ballSet.contains("basketBall") {
    print("包含 basketBall")
} else {
    print("不包含 basketBall")
}


//3. 遍历 Set
for item in ballSet {
    print("item: \(item)")
}

for (index, item) in ballSet.enumerated() { //同样返回元组
    print("\(index) item: \(item)")
}

for item in ballSet.sorted() {
    print(item)
}


//4. 集合操作
let set123: Set = [1, 2, 3]
let set345: Set = [3, 4, 5]

let unionSet = set123.union(set345) //两个集合的并集
let intersectSet = set123.intersection(set345)  //两个集合的交集
let subtractSet = set123.subtracting(set345)    //排除掉在 set345 中的值
let symmerSet = set123.symmetricDifference(set345)  //并集排除掉交集后的集合

//5. Set 类型的 哈希值
//略: 


//三. 字典
//1. 定义字典
var fruitDict = ["A" : "apple", "B" : "banana"]

//2. 读取修改字典
let firstItemInDict = fruitDict["A"]
fruitDict.isEmpty
fruitDict.updateValue("orange", forKey: "O")    //更新对应的值, 如果不存在, 则返回空
fruitDict["O"]
let toRemoveInFruit = fruitDict.removeValue(forKey: "e")    //如果存在, 则删除并返回删除的值, 如果不存在, 则返回 nil

let keys = fruitDict.keys
let values = fruitDict.values
for item in keys {
    print(item)
}

//3. 字典遍历
for (key, value) in fruitDict {
    print("\(key) : \(value)")
}


//4. 空字典
var nameOfNumbers = Dictionary<Int, String>()
nameOfNumbers[1] = "one"




















