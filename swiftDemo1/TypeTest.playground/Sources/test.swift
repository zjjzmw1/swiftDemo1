import Foundation



public func test() -> Void {
    // if let
    let isFlag:Bool? = false
    if let tempFlag = isFlag {
        print( (tempFlag))
    }
    
    // ?  ！
//    let name : String?
//    name!.hashValue
    // 逻辑判断和区间
//    ... 表示闭区间/ ..< 表示开区间, == 表示值相等/=== 表示引用相同, + 可以直接加字符串或数组
    for i in  1...100 {
        print( (i))
    }
    
    // ??
    var a:Int?
    print(a ?? 2) //2
    
    
    // 闭包test
    var doubleFun : (Int) -> Int
    doubleFun = {
        num in
        return num * 2
    }
    
    doubleFun(5)
    
    
    typealias Type = (Int) -> Int
    
    var b : Type
    b = {
        num in
        return num * 2
    }
    
    b(6)
    
    
    // 运算符重载
//    func - (t1 : Int,t2: Int) -> Int {
//        return  t1 + t2
//    }
//    
//    var a = 20
//    var b = 23
//    
//    var c = b - a
//    c
//    
//    let tupe1 = ("xiaoming",16)
//    let tupe2 = ("xiaoming",18)
//    
//    func == (t1:(String,Int) , t2:(String,Int)) -> Bool {
//        return (t1.0 == t2.0 && t1.1 == t2.1)
//    }
//    
//    let flag = (tupe1 == tupe2)
//    flag

}

/// 普通交互方法定义
func swapTwoIntValue (inout a:Int ,inout b:Int) {
    let tempV = a
    a = b
    b = tempV
}

/// 泛型定义
func swapTwoValue<T> (inout a:T , inout b:T) {
    let tempValue = a
    a = b
    b = tempValue
}



