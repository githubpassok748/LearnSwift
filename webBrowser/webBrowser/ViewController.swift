//
//  ViewController.swift
//  webBrowser
//
//  Created by foryoo on 15/3/9.
//  Copyright (c) 2015年 foryoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate, UITextFieldDelegate {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var web1: UIWebView!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //载入网页请求
    func loadurl(url: String, web: UIWebView) {
        let aurl = NSURL(string: "http://" + url)
        
        let urlrq = NSURLRequest(URL:  aurl!)
        
        web.loadRequest(urlrq)
    }
    
    //网页开始载入
    func webViewDidStartLoad(webView: UIWebView) {
        loading.startAnimating()
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    //网页结束载入
    func webViewDidFinishLoad(webView: UIWebView) {
        //网页中间自定义齿轮小时
        loading.stopAnimating()
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //接触第一反应，键盘消失
        textField.resignFirstResponder()
        
        //载入输入的网址请求
        loadurl(textField.text, web: web1)
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

