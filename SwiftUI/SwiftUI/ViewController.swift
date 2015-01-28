//
//  ViewController.swift
//  SwiftUI
//
//  Created by foryoo on 15/1/28.
//  Copyright (c) 2015年 foryoo. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    var clickcount = 0
    var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //在界面上加个UILable
        let rect = CGRect(x: 0, y: 100, width: 320, height: 44)
        //创建UILable对象 frame参数就是在父视图中的区域坐标
        myLabel = UILabel(frame: rect)
        myLabel!.text = "iOS"
        myLabel!.backgroundColor = UIColor.redColor()
        self.view.addSubview(myLabel!)
        
        //创建UIButton
        var myButton = UIButton(frame: CGRect(x: 100, y: 200, width: 100, height: 44))
        myButton.backgroundColor = UIColor.blueColor()
        myButton.setTitle("点击我", forState: .Normal)
        //增加点击事件
        myButton.addTarget(self, action: "clickMe:", forControlEvents:.TouchUpInside)
        self.view.addSubview(myButton)
    }
    
    //定义事件函数
    func clickMe(sender: UIButton) {
        clickcount++
        println("click \(clickcount)")
        myLabel!.text = "iOS \(clickcount)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

