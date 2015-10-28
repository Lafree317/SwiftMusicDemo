//
//  MusicListTableViewController.swift
//  SwiftMusicDemo
//
//  Created by huchunyuan on 15/10/26.
//  Copyright © 2015年 LafreeTream. All rights reserved.
//

import UIKit

class MusicListTableViewController: UITableViewController {
    var selectCellIndex = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 垂直线
        self.tableView.showsVerticalScrollIndicator = false;
        // 去线
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        
        // 请求
        RequestDataManager.singleton.getDataWithUrl("http://project.lanou3g.com/teacher/UIAPI/MusicInfoList.plist") { () -> Void in
            self.tableView.reloadData()
        }
        
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return RequestDataManager.singleton.allDataArray.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:MusicListTableViewCell = tableView.dequeueReusableCellWithIdentifier("MusicCell_id", forIndexPath: indexPath) as! MusicListTableViewCell
        cell.setModel(RequestDataManager.singleton.getModelWithIndex(indexPath.row))
        cell.selectionStyle = UITableViewCellSelectionStyle.None;
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailVC = DetailViewController()
        let index = indexPath.row
        detailVC.index = String(index)
        self.showViewController(detailVC, sender: nil)
        
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let detailVC = segue.destinationViewController as! DetailViewController
//        detailVC.index = selectCellIndex;
//        
//        
//    }

}
