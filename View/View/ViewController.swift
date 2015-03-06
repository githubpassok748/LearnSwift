//
//  ViewController.swift
//  View
//
//  Created by foryoo on 15/3/4.
//  Copyright (c) 2015年 foryoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pg1: UIProgressView!
    
    let operationQueue = NSOperationQueue()
    
    var 完成进度 : Int = 0 {
        didSet(oldValue) {
            let 进度比 = Float(完成进度) / Float(100)
            let 是否动画 = (oldValue != 0)

            pg1.setProgress(进度比, animated: 是否动画)
        }
    }
    
    func simulateProgress() {
        for _ in 0...100 {
            operationQueue.addOperationWithBlock {
                sleep(arc4random_uniform(10))
                
                NSOperationQueue.mainQueue().addOperationWithBlock {
                    self.完成进度++
                    return
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        simulateProgress()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

