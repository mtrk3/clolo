//
//  DetailViewController.swift
//  clolo1
//
//  Created by 奥野美波 on 2015/06/28.
//  Copyright (c) 2015年 奥野美波. All rights reserved.


import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        UILabel.label = selectedLabel

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func call(){
        
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
