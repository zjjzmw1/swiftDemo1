//
//  AppDelegate.swift
//  swiftDemo1
//
//  Created by xiaoming on 16/3/7.
//  Copyright © 2016年 shandandan. All rights reserved.

/*
 1：值类型 ----------- :
 元组(Tuple)
 结构体(Struct)
 枚举(Enum)
 基本类型：整数(Int)、浮点数(Float)、布尔值(Bool)、字符串(String)、数组(Array)和字典(Dictionary)
 
 2：引用类型 --------- :
 类(Class)
 类 与结构体等不同的地方：
 1.继承允许一个类继承另一个类的特征
 2.类型转换允许在运行时检查和解释一个类实例的类型
 3.取消初始化器允许一个类实例释放任何其所被分配的资源(与结构体不同，类实例没有默认的成员逐一初始化器)
 4.引用计数允许对一个类的多次引用（因为是引用类型）
 
 */


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // 初始化window
        self.window = UIWindow()
        self.window?.backgroundColor = UIColor.whiteColor()
        self.window?.frame = CGRectMake(0, 0, kScreenWidth, kScreenHeight)
        // 不用导入头文件
        let detailVC:HomeViewController = HomeViewController()
        let navi:UINavigationController = UINavigationController()
        navi .addChildViewController(detailVC)
        self.window?.rootViewController = navi
        self.window?.makeKeyAndVisible()
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

