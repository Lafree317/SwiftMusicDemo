//
//  DetailViewController.swift
//  SwiftMusicDemo
//
//  Created by huchunyuan on 15/10/28.
//  Copyright © 2015年 LafreeTream. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var index = ""
    

    @IBOutlet weak var indexLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        indexLabel.text = index

        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
