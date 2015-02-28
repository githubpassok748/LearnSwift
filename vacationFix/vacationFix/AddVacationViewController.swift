//
//  AddVacationViewController.swift
//  vacationFix
//
//  Created by foryoo on 15/2/28.
//  Copyright (c) 2015年 foryoo. All rights reserved.
//

import UIKit

class AddVacationViewController: UIViewController {

    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!
    
    var vacation = Vacation()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if sender as UIBarButtonItem  == doneButton {
            if (!textField.text.isEmpty) {
                vacation.place = textField.text
            }
        }
    }
    

}
