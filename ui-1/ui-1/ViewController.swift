//
//  ViewController.swift
//  ui-1
//
//  Created by foryoo on 15/1/29.
//  Copyright (c) 2015年 foryoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func button1(sender: UIButton) {
        label1.text = "我的第一个UI程序"
    }
    @IBOutlet weak var label1: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

