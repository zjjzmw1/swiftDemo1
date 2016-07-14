import Foundation

public class People {
    var name = ""
    var age = 0
    var height : Float
    
    // 在类里面如果有属性没有初始化的时候，必须添加init方法，把他初始化了.(类没有默认初始化)
    init(height: Float) {
        self.height = height
    }
    
}


// 测试类方法
func testClass() {
    var p1 = People(height: 15)
    var p2 = p1
    if p1 === p2 {// 判断两个类是否引用一个
        print("两个是引用的一个类")
    }else if (p1 !== p2) {
        print("两个类不是引用的一个")
    }
}