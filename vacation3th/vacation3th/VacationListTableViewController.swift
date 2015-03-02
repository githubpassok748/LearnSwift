//
//  VacationListTableViewController.swift
//  vacation3th
//
//  Created by foryoo on 15/3/2.
//  Copyright (c) 2015年 foryoo. All rights reserved.
//

import UIKit

class VacationListTableViewController: UITableViewController {
    
    var vacationList = [Vacation]()
    
    func loadInitData() {
        var vacation1 = Vacation()
        vacation1.place = "北京"
        vacationList.append(vacation1)
        
        var vacation2 = Vacation()
        vacation2.place = "舟山"
        vacationList.append(vacation2)
        
        var vacation3 = Vacation()
        vacation3.place = "深圳"
        vacationList.append(vacation3)
        
        var vacation4 = Vacation()
        vacation4.place = "厦门"
        vacationList.append(vacation4)
        
        var vacation5 = Vacation()
        vacation5.place = "三亚"
        vacationList.append(vacation5)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        loadInitData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return vacationList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PCell", forIndexPath: indexPath) as UITableViewCell

        let v1 = vacationList[indexPath.row]
        // Configure the cell...
        cell.textLabel.text = v1.place
        
        if v1.visited {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.None
        }
        return cell
    }
    
    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: true)
        tableView.setEditing(editing, animated: true)
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let v1 = vacationList[indexPath.row]
        v1.visited = !v1.visited
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        tableView.reloadData()
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            vacationList.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Top)
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindToList(seque: UIStoryboardSegue) {
        let source = seque.sourceViewController as AddVacationViewController
        
        let v1 = source.vacation
        
        if v1.place != "" {
            vacationList.append(v1)
        }
    }

}
