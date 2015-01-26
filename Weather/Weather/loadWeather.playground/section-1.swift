// Playground - noun: a place where people can play

import Cocoa


//load weather

var url = NSURL(string: "http://www.weather.com.cn/data/sk/101010100.html")
var data = NSData(contentsOfURL: url!, options: NSDataReadingOptions.DataReadingUncached, error: nil)
//var str = NSString(data: data!, encoding: NSUTF8StringEncoding)

var json: AnyObject! = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments, error: nil)
var weatherInfo  = json.objectForKey("weatherinfo")
var city = weatherInfo!.objectForKey("city")
var temp = weatherInfo!.objectForKey("temp")
var wind = weatherInfo!.objectForKey("WS")




