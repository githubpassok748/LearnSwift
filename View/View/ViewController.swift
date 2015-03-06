//
//  ViewController.swift
//  View
//
//  Created by foryoo on 15/3/4.
//  Copyright (c) 2015年 foryoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var toolbar1: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configToolBar()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //添加按钮
    func configToolBar() {
        let items = [
            trashItem, spaceItem, shareItem
        ]
        
        toolbar1.setItems(items, animated: true)
    }
    
    //垃圾桶图标按钮
    var trashItem : UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .Trash, target: self, action: "trashClick:")
    }
    
    //垃圾桶事件
    func trashClick(barItem: UIBarButtonItem) {
        println("\(barItem)您按了删除按钮！")
    }
    
    //中间空格
    var shareItem : UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .Reply, target: self, action: "shareClick:")
    }
    
    //分享按钮
    func shareClick(barItem: UIBarButtonItem) {
        println("\(barItem)已经共享到新浪微博了！")
    }

    var spaceItem : UIBarButtonItem {
        return UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

