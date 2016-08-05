//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//1. 最简初始化方法
struct Fahrenheit {
    var temperature: Double = 39
    init() {
        temperature = 32
    }
}

var fah = Fahrenheit()
fah.temperature



//2. 拥有参数的初始化方法
struct Celsius {
    var temperatureInCelsius: Double = 0.0
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32) / 1.8
    }
    //如果没有设置外部参数名, swift 会自动将添加一个与内部参数名同名的外部参数名
    init(kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

let boilingOfWater = Celsius(fromFahrenheit :273.15)
boilingOfWater.temperatureInCelsius

let freezingOfWater = Celsius(kelvin: 279)
freezingOfWater.temperatureInCelsius

////练习, Color
struct Color {
    var red, green, blue: Double
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}

let red = Color(red: 1, green: 0.3, blue: 0.1)

//3. 可选属性类型
class SurveyQuestion {
//    var text: String
    
    //在构造过程中修改常量属性, 上述类中变量属性 text 更改为常量属性 text
    let text: String?
    
    var response: String?
    init(text: String) {
        self.text = text    //在构造过程结束前可以修改常量属性的值
    }
    func ask() {
        print(self.text)
    }
}
var  tSur = SurveyQuestion(text: "Do you like Chinese")
tSur.ask()

tSur.response = "yes, I like it"
print(tSur.response)

//4. 默认构造器
//swift 会为基类或 struct 设置一个默认构造器
//条件为: 所有属性已提供默认值 && 自身没有定义任何构造器
class ShopListItem {
    var name: String?
    var count: Int = 0
    var purchased = false
}

let item1 = ShopListItem()
item1.name = "fish"
item1.name

//5. 结构体的逐一成员构造器
//swift 会为 struct 提供一个逐一成员构造器
//条件为: 所有属性已提供默认值 && 自身没有定义任何构造器
struct Size {
    var width = 0.0, height = 0.0
}
let tSize = Size(width: 32, height: 12)
tSize.width

//6. 值类型的构造器代理
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width/2)
        let originY = center.y - (size.height/2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
let tCenter = Point(x: 20, y: 40)
let tSize2 = Size(width: 30, height: 40)
let tRect = Rect(center: tCenter, size: tSize2)
tRect.origin.x
tRect.size.width


//7. 类的继承和构造过程
//实战:
//基类: Food
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[unname]")
    }
}
let tFood = Food()
tFood.name

//子类: RecipeIngredient
class RecipeIngredient : Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let tRec = RecipeIngredient(name: "fish")
tRec.name
tRec.quantity
let tRec2 = RecipeIngredient()  //规则2: 如果子类提供了所有父类指定构造器的实现, 那么它将自动继承父类所有的便利构造器
tRec2.name
tRec2.quantity

//子类: 购物清单, ShopItem
class ShopItem : RecipeIngredient {
    var purchased = false
    var descrption: String {
    var output = "\(quantity) * \(name) "
        output += purchased ? "√" : "×"
        return output
    }
}

var tSho = [ShopItem(),
            ShopItem(name: "banana"),
            ShopItem(name: "apple", quantity: 6)]
tSho[0].name = "orange"
tSho[1].purchased = true
for item in tSho {
    print(item.descrption)
}


//8. 可失败构造器
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty {return nil}
        self.species = species
    }
}

let tAni = Animal(species: "")
//let tAni = Animal(species: "tiger")
if let ani = tAni {
    print(ani.species)
}

//其它可失败构造器暂时略过





















