//: Playground - noun: a place where people can play
/*
 1：值类型 ----------- :
    元组(Tuple)
    结构体(Struct)
    枚举(Enum)
    基本类型：整数(Int)、浮点数(Float)、布尔值(Bool)、字符串(String)、数组(Array)和字典(Dictionary)
 
 2：引用类型 --------- :
    类(Class)
 

 */



import UIKit


// 枚举使用 ---------------------------BEGIN---------------------------
var d1 = Dirction.North
var d2 = d1
d1 = .East
d2
switch d1 {
    case .North :
        print("north")
    case .East :
        print("east")
    default :
        print("不对")
}

if d1.hashValue == Dirction.East.hashValue {
    print("方向相等值为： " + String(d1.hashValue))
}else{
    print("方向不相等值为：" + String(d1.hashValue))
}

var d3 = Dirction3.East
var d4 = Dirction3.West
if d3 == d4 {
    print("相等：" + String(d3))
}else{
    print("d3==\(d3)  d4===\(d4)")
}

// 不常用的
var p1 = People.age(age : 10)
var p2 : People = .name(name : "xiaoming")

switch p1 {
    case People.age(10) :
        print("10 岁了")
    case .name("xiaomi") :
        print("小米")
    default :
        print("不匹配")
}

if let p : People = p1 {
    print("p===\(p)")
}

switch p2 {
    case let People.age(age) :
        print("年龄===\(age)")
    case People.name(let name) :
        print("名字===\(name)")
}




// 枚举使用 ---------------------------END---------------------------


