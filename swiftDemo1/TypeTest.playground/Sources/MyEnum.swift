import Foundation

// 想要在其他组文件里面调用 需要 public

/// 表示东南西北的枚举
public enum Dirction { // 没有默认值.需要用户设定 但是 hashValue 的值 是从 0 开始 
    case    North
    case    South
    case    West
    case    East
}
/// 第二种方式
public enum Dirction2 { // 可以用逗号分隔
    case    North,South,West,East
}

/// 第三种方式 rawValue 原始值
public enum Dirction3 : Int {
    case North = 10 // hashValue = 0   rawValue = 10 
    case South
    case West = 29
    case East  // hashValue = 3   rawValue = 30
}

public enum People { // 可以关联多种类型的值
    case    age (age : Int)
    case    name (name : String)
}


