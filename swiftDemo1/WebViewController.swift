//
//  WebViewController.swift
//  swiftDemo1
//
//  Created by xiaoming on 16/3/8.
//  Copyright © 2016年 shandandan. All rights reserved.
//

import UIKit

class WebViewController: BaseViewController,UIWebViewDelegate {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //		let path = NSBundle.mainBundle().pathForResource("html", ofType: "data");
        //		if path == nil
        //		{
        //			print("path not exist")
        //		}
        //		else
        //		{
        //			let data = NSData(contentsOfFile: path!)
        //            let urlString = "https://www.baidu.com"
        //            let url = NSURL(string: urlString)
        //			web.loadData(data!, MIMEType: "text/html", textEncodingName: "utf-8", baseURL: url!)
        //		}
        
        // 加载自己的web页面
        loadMyWebView()
    }
    
    // 加载自己的webView
    func loadMyWebView()
    {
        let width = UIScreen.mainScreen().bounds.width
        let height = UIScreen.mainScreen().bounds.height
        let webV = UIWebView()
        webV.frame = CGRectMake(0, 0, width, height)
        let urlString = "http://www.baidu.com"
        let url = NSURL(string: urlString)
        let urlRequest = NSURLRequest(URL: url!)
        webV.delegate = self
        webV.loadRequest(urlRequest)
        self.view.addSubview(webV)
        self.view .bringSubviewToFront(webV)
    }
    
    // webView的代理方法
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        print(webView)
        return true
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("开始了")
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        print("完成了")
        self.title = webView.stringByEvaluatingJavaScriptFromString("document.title")
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print(error)
    }

}
