//
//  ViewController.swift
//  Weather
//
//  Created by foryoo on 15/1/26.
//  Copyright (c) 2015年 foryoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tv: UITextView!
    
    @IBAction func btnPressed(sender: AnyObject) {
        println("Button Clicked")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadWeather()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadWeather() {
        var url = NSURL(string: "http://www.weather.com.cn/data/sk/101010100.html")
        var data = NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached, error: nil)
        //var str = NSString(data: data!, encoding: NSUTF8StringEncoding)
        
        var json: AnyObject! = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments, error: nil)
        var weatherInfo: AnyObject?  = json.objectForKey("weatherinfo")
        var city: AnyObject? = weatherInfo!.objectForKey("city")
        var temp: AnyObject? = weatherInfo!.objectForKey("temp")
        var wind: AnyObject? = weatherInfo!.objectForKey("WD")
        var ws: AnyObject? = weatherInfo!.objectForKey("WS")
        
        tv.text = "城市：\(city!)\n温度：\(temp!)\n风：\(wind!)\n风级：\(ws!)"
    }

}

