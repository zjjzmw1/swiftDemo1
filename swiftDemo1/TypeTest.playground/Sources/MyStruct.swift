import Foundation

public struct Student {
    public var age : Int
    public var name : String
    // 默认有一个初始化方法，可以不写的.(类 是没有的)
//    public init(age: Int, name: String) {
//        self.name = name
//        self.age = age
//    }
    // 结构体中方法不能直接修改字段的值，否则会报错 （这里的age name 都不能在方法里面修改）
    func getAge() -> Int {
        return self.age
    }
    
    
    
}


/// 测试结构体方法
func testStruct() {
    let stu = Student(age: 10, name: "xiao")
    print("stu 名称：\(stu.name) 年龄是 ：\(stu.getAge())")
    print("Int 最大值：\(Int.max)") // 结构体的静态方法
}