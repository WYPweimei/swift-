//
//  DBC_TabBarView.swift
//  DBCSwift
//
//  Created by 王烨谱 on 2016/12/13.
//  Copyright © 2016年 王烨谱. All rights reserved.
//

import UIKit

protocol ReplaceIndexItmeDelegate : NSObjectProtocol {
    func replaceIndexItme(_ index:Int)
}


class DBC_TabBarView: UIView{
    //MARK: property
    //---------------const--------------
    //---------------ui--------------
    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var farmerButton: UIButton!
    @IBOutlet weak var marketButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var publicButton: UIButton!
    //---------------manage--------------
    
    //MARK: ---------------override--------------
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    //MARK: ---------------setting,getting--------------
    
    //MARK: ---------------lifeCircle--------------
    
    //MARK: ---------------initXIB--------------
    
    //MARK: ---------------requestData--------------
    
    //MARK: Action
    //---------------publicAction------------
    func replaceIndexItme(_ index: Int) {
        self.userButton.isSelected = false
        self.farmerButton.isSelected = false
        self.marketButton.isSelected = false
        self.homeButton.isSelected = false
        self.publicButton.isSelected = false
        
        switch index {
        case 0: self.homeButton.isSelected = true
        case 1: self.marketButton.isSelected = true
        case 2: self.farmerButton.isSelected = true
        case 3: self.userButton.isSelected = true
        case 4: self.publicButton.isSelected = true
        default: print("index is error")
        }
    }

    //---------------privateAction------------
    
    //---------------xibAction------------
    @IBAction func homeAction(_ sender: UIButton) {//首页
        self .replaceIndexItme(0)
    }
    @IBAction func marketAction(_ sender: UIButton) {//逛市场
        self .replaceIndexItme(1)
    }
    @IBAction func farmerAction(_ sender: UIButton) {//生意圈
        self .replaceIndexItme(3)
    }
    @IBAction func userAction(_ sender: UIButton) {//我的
        self .replaceIndexItme(4)
    }
    @IBAction func publicAction(_ sender: UIButton) {//发布
        self .replaceIndexItme(2)
    }
}
