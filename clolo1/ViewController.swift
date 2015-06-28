//
//  ViewController.swift
//  clolo1
//
//  Created by 奥野美波 on 2015/06/20.
//  Copyright (c) 2015年 奥野美波. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
     @IBOutlet var tableView: UITableView?
  
    let imgArray: NSArray = []

    let label1Array: NSArray = ["DoStyle","Lanp","VALON","ヒッチハイカ-","Potager lone","RAGLA MAGLA 下北沢2号店","RAGLA MAGLA 下北沢1号店","SPOOKY?","RINKAN 下北沢店","Recycle & Select Shop Armadio","スティックアウト","GRAPEFRUIT MOON 下北沢","SANKA","FLAMINGO 下北沢店","SUNNY SIDE UP 下北沢店","３びきの子ねこ","SMOG","Ruby Tuesday","UTA","TRADE★MARK","saLad bowL","hickory","MAMMOTH JUMP","BIG RUBY","HOOCHIE COOCHIE 北口店","GUADALUPE","ヴォーテしもきた","soma","Like","P.max","Bulsaras","リサイクルショップ ばら商店 下北沢店","thalassicus"]
    
  
    let label2Array: NSArray = []


    
    //tableViewの紐付け
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //Table Viewのセルの数を指定
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    //各セルの要素を設定する
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // tableCell の ID で UITableViewCell のインスタンスを生成
        var cell = tableView.dequeueReusableCellWithIdentifier("shimokitacell", forIndexPath: indexPath) as! UITableViewCell
        var img = UIImage(named:"\(imgArray[indexPath.row])")
        
        
        // Tag番号 1 で UIImageView インスタンスの生成
        var imageView = tableView.viewWithTag(1) as! UIImageView
        imageView.image = img


        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = tableView.viewWithTag(2) as! UILabel?
         label1!.text = "\(label2Array[indexPath.row])"
        
        // Tag番号 ３ で UILabel インスタンスの生成
        var label2 = tableView.viewWithTag(3) as! UILabel?
        label2!.text = "\(label2Array[indexPath.row])"
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }
}