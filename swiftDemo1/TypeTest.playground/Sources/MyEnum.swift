import Foundation

// 想要在其他组文件里面调用 需要 public

public enum Dirction { // 没有默认值.需要用户设定 但是 hashValue 的值 是从 0 开始
    case    North
    case    South
    case    West
    case    East
}

/// 第三种方式 rawValue 原始值
public enum Dirction3 : Int {
    case North = 10 // hashValue = 0   rawValue = 10 
    case South
    case West = 29
    case East  // hashValue = 3   rawValue = 30
}

/// 获取面积的枚举
public enum Shape {
    case Square(sider:Double)
    case Rectangle(width:Double, height:Double)
    case Circle(centerX:Double, centerY:Double, raduis:Double)
}

/// 测试枚举的方法
func testEnum() {
    var d1 = Dirction.North
    let d2 = d1
    d1 = .East
    print("d1===\(d1) d2===\(d2)")
    switch d1 {
    case .North :
        print("north")
    case .East :
        print("east")
    default :
        print("其他")
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
    
    var square1 = Shape.Square(sider: 2.0)
    var square2 : Shape = square1
    square2 = Shape.Square(sider: 5.0)
}

