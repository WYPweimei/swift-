//
//  DBC_NavViewController.swift
//  DBCSwift
//
//  Created by 王烨谱 on 2016/12/13.
//  Copyright © 2016年 王烨谱. All rights reserved.
//

import UIKit

class DBC_NavViewController: UINavigationController {
    //MARK: property
    //---------------const--------------
    //---------------ui--------------
    //---------------manage--------------
    //MARK: ---------------setting,getting--------------
    private var navBar:UINavigationBar{
        let appear:UINavigationBar = UINavigationBar.appearance()
        let attributeDic:Dictionary = [NSFontAttributeName: UIFont.systemFont(ofSize: 16),NSForegroundColorAttributeName:UIColor.white]
        appear.titleTextAttributes = attributeDic
        appear.barTintColor = UIColor.red
        return appear
    }
    
    private var navLeftItme:UIBarButtonItem{
        let appearance:UIBarButtonItem = UIBarButtonItem.appearance()
        /** 设置文字属性 **/
        let textAttrs:Dictionary = [NSForegroundColorAttributeName:UIColor.orange , NSFontAttributeName:UIFont.systemFont(ofSize:15)]
        appearance .setTitleTextAttributes(textAttrs, for: UIControlState.normal)
        // 设置高亮状态的文字属性
        let highTextAttrs:Dictionary = [NSForegroundColorAttributeName:UIColor.orange , NSFontAttributeName:UIFont.systemFont(ofSize:15),NSForegroundColorAttributeName:UIColor.red]
        appearance .setTitleTextAttributes(highTextAttrs, for: UIControlState.highlighted)
        // 设置不可用状态(disable)的文字属性
        let disableTextAttrs:Dictionary = [NSForegroundColorAttributeName:UIColor.orange , NSFontAttributeName:UIFont.systemFont(ofSize:15),NSForegroundColorAttributeName:UIColor.lightGray]
        appearance .setTitleTextAttributes(disableTextAttrs, for: UIControlState.disabled)
        /**设置背景**/
        appearance .setBackgroundImage(UIImage.init(named: "navigationbar_button_background"), for: UIControlState.normal, barMetrics: UIBarMetrics.default)
        return appearance
    }
    
    
    //MARK: ---------------override--------------
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isTranslucent = false;
        
    }
    
//    override func initialize(){
//        
//    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if(self.viewControllers.count > 0){
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: leftNormalImage, style: UIBarButtonItemStyle.plain, target: self, action: #selector(navBack))
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    //MARK: ---------------lifeCircle--------------
    //MARK: ---------------initXIB--------------
    //MARK: ---------------requestData--------------
    //MARK: Action
    //---------------publicAction------------
    //---------------privateAction------------
    func navBack(){
        self.popViewController(animated: true)
    }
    //---------------xibAction------------
}
