//
//  ViewController.swift
//  clolo1
//
//  Created by 奥野美波 on 2015/06/20.
//  Copyright (c) 2015年 奥野美波. All rights reserved.
//

import UIKit

 var selectedLabel: UILabel!


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
     @IBOutlet var tableView: UITableView?
  
    let imgArray: NSArray = ["DoStyle2.jpg","LANP.jpg","VALON.jpg","ヒッチハイカー.jpg","Potagerlone.jpg","RAGLAMAGLA2.jpg","RAGLAMAGLA1.jpg","SPOOKY?.jpg","RINKAN.jpg","Recycle&SelectShopArmadio.jpg","スティックアウト.jpg","GRAPEFRUITMOON.jpg","SANKA.jpg","FLAMINGO.jpg","SUNNYSIDEUP.jpg","３びきの子ねこ.jpg","SMOG.jpg","RubyTuesday.jpg","UTA.jpg","TRADE★MARK.jpg","saLad bowL.jpg","hickory.jpg","MAMMOTHJUMP.jpg","BIGRUBY.jpg","HOOCHIECOOCHIE.jpg","GUADALUPE.jpg","ヴォーテしもきた.jpg","soma.jpg","Like.jpg","Pmax.jpg","Bulsaras.jpg","ばら商店.jpg","thalassicus.jpg"]

    let label1Array: NSArray = ["DoStyle","Lanp","VALON","ヒッチハイカ-","Potager lone","RAGLA MAGLA 下北沢2号店","RAGLA MAGLA 下北沢1号店","SPOOKY?","RINKAN 下北沢店","Recycle & Select Shop Armadio","スティックアウト","GRAPEFRUIT MOON 下北沢","SANKA","FLAMINGO 下北沢店","SUNNY SIDE UP 下北沢店","３びきの子ねこ","SMOG","Ruby Tuesday","UTA","TRADE★MARK","saLad bowL","hickory","MAMMOTH JUMP","BIG RUBY","HOOCHIE COOCHIE 北口店","GUADALUPE","ヴォーテしもきた","soma","Like","P.max","Bulsaras","リサイクルショップ ばら商店 下北沢店","thalassicus"]
    
  
    let label2Array: NSArray = ["東京都世田谷区北沢2-19-16","東京都世田谷区北沢2-25-8　東洋百貨店 №７","東京都世田谷区北沢2-25-8 東洋百貨店内No23","東京都世田谷区北沢2-23-6 スミレビル3","東京都世田谷区代沢5-33-3ボート代沢","東京都世田谷区北沢2-30-13 ファインコート２Ｆ","東京都世田谷区北沢2-30-10 浜辺ビル201","東京都世田谷区代沢5-36-17 膳場ビル２F","東京都世田谷区北沢2-33-5新力ビル1F","東京都世田谷区北沢1-32-17","東京都世田谷区北沢2-14-16-2F","東京都世田谷区北沢2-2-11 Comodo I 1F","東京都世田谷区北沢2-40-17","東京都世田谷区北沢2-25-12 リサビル1F","東京都世田谷区北沢２－２５－１３　２Ｆ","東京都世田谷区北沢2-25-8 東洋百貨店内","東京都世田谷区北沢2-25-8 東洋百貨店","東京都世田谷区代沢5-36-16　井上ビル1C","東京都世田谷区北沢2-9-25 下北沢ビル2F","東京都世田谷区北沢2-23-12 アドレス北沢1F","東京都世田谷区代沢 5-36-16","東京都世田谷区代沢5-29-17飯田ハイツ１Ｆ","東京都世田谷区北沢2-26-10 2F","東京都世田谷区北沢2-24-6 北口ビル1F","東京都世田谷区北沢2-30-2","東京都世田谷区北沢2-26-23　オーブ井部ビル1F","東京都世田谷区代田6-7-24 ルミナス24","東京都世田谷区北沢2-12-2 ミナナミコーポ102","東京都世田谷区北沢2-25-8 東洋百貨店内","東京都世田谷区代沢5-32-7","東京都世田谷区代沢5-28-14","東京都世田谷区代沢5-8-10","東京都世田谷区北沢2-30-3"]

    
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
        
        
        // Tag番号 1 で UIImageView インスタンスの生成
        var imageView = tableView.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named:"\(imgArray[indexPath.row])")


        // Tag番号 ２ で UILabel インスタンスの生成
        let label1 = tableView.viewWithTag(2) as! UILabel?
        label1!.text = "\(label1Array[indexPath.row])"
        
        // Tag番号 ３ で UILabel インスタンスの生成
        let label2 = tableView.viewWithTag(3) as! UILabel?
        label2!.text = "\(label2Array[indexPath.row])"
        
        return cell
    }
    
    
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }
}