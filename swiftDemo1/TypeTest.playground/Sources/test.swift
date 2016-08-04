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



