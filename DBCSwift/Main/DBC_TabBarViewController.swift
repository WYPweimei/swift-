//
//  DBC_TabBarViewController.swift
//  DBCSwift
//
//  Created by 王烨谱 on 2016/12/13.
//  Copyright © 2016年 王烨谱. All rights reserved.
//

import UIKit

class DBC_TabBarViewController: UITabBarController{
    //MARK: property
    //---------------const--------------
    let homeVC = DBCHomeViewController()
    let farmerVC = DBCFarmerViewController()
    let marketVC = DBCMarketViewController()
    let userVC = DBCUserViewController()
    //---------------ui--------------
    //---------------manage--------------
    //MARK: ---------------setting,getting--------------
    private var dbcTabbar:DBC_TabBarView{
        let dbcTabbar:DBC_TabBarView = Bundle.main.loadNibNamed("DBC_TabBarView", owner: self, options: nil)?.last as! DBC_TabBarView
        dbcTabbar.frame = CGRect.init(x: 0, y: 100, width: DBC_ScreenWidth, height: 76);
        dbcTabbar.backgroundColor = UIColor.red
        return dbcTabbar
    }
    
    //MARK: ---------------override--------------
    override func viewDidLoad() {
        super.viewDidLoad(
            self.view.addSubview(self.dbcTabbar)
        )
    }
    
    //MARK: ---------------lifeCircle--------------
    
    //MARK: ---------------initXIB--------------
    //MARK: ---------------requestData--------------
    //MARK: Action
    //---------------publicAction------------
    //---------------privateAction------------
    private func addSubControllers(){
        self.addChildViewController(homeVC)
        self.addChildViewController(farmerVC)
        self.addChildViewController(marketVC)
        self.addChildViewController(userVC)
    }
    //---------------xibAction------------


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
