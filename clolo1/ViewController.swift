//
//  ViewController.swift
//  clolo1
//
//  Created by 奥野美波 on 2015/06/20.
//  Copyright (c) 2015年 奥野美波. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //tableViewの紐付け
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //セルに表示するテキスト
    let texts = ["DoStyle","Lanp","VALON","ヒッチハイカ＝","Potager lone","RAGLA MAGLA 下北沢2号店","RAGLA MAGLA 下北沢1号店","SPOOKY?","RINKAN 下北沢店","Recycle & Select Shop Armadio","スティックアウト","GRAPEFRUIT MOON 下北沢","SANKA","FLAMINGO 下北沢店","SUNNY SIDE UP 下北沢店","３びきの子ねこ","SMOG","Ruby Tuesday","UTA","TRADE★MARK","saLad bowL","hickory","MAMMOTH JUMP","BIG RUBY","HOOCHIE COOCHIE 北口店","GUADALUPE","ヴォーテしもきた","soma","Like","P.max","Bulsaras","リサイクルショップ ばら商店 下北沢店","thalassicus"]
    //セルの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    // セルの内容を変更
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = texts[indexPath.row]
        return cell
    }

}