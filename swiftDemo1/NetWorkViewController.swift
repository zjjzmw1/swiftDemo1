//
//  NetWorkViewController.swift
//  swiftDemo1
//
//  Created by xiaoming on 16/3/8.
//  Copyright © 2016年 shandandan. All rights reserved.
//

import UIKit
import Alamofire

class NetWorkViewController: BaseViewController {

    override func viewDidLoad() {
        
        
        
        NetworkTool.requestJSON(Alamofire.Method.GET, URLString: "https://www.baidu.com", parameters: ["a":"aa"]) { (response) -> () in
            print(response)
        }
        
    }
    
    
    
}
