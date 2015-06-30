//
//  LogViewController.swift
//  clolo1
//
//  Created by 奥野美波 on 2015/06/30.
//  Copyright (c) 2015年 奥野美波. All rights reserved.
//

import UIKit

class LogViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func call(){
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://0000000000")!)
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
