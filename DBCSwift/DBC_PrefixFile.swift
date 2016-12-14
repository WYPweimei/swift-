//
//  DBC_PrefixFile.swift
//  DBCSwift
//
//  Created by 王烨谱 on 2016/12/13.
//  Copyright © 2016年 王烨谱. All rights reserved.
//

import UIKit

//MARK: ClassHeader
import Foundation

//MARK: enum
enum ListDataStatus:Int{
    case ListDataStatusNormal = 0 // 常态, 数据还未加载下来
    case ListDataStatusHadData = 1// 数据请求下来, 有数据
    case ListDataStatusFailed = 2// 数据请求失败, 有数据
    
    case ListDataStatusNoData = 3 // 数据请求下来, 无数据
    case ListDataStatusFailedNoData = 4// 数据请求失败, 无数据
    case ListDataStatusFailedNoNetwork = 5// 数据请求失败, 无网络
    case ListDataStatusFailedTimeOut = 6// 数据请求失败, 请求超时
}

//MARK: const
let leftNormalImage = UIImage.init(named: "leftNormalImage")

//MARK: other
func DBC_RGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) ->(_ : UIColor) { return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a) }
func HFLog<T>(message: T, fileName: String = #file, methodName: String =  #function, lineNumber: Int = #line)
{
    #if DEBUG
        let str : String = (fileName as NSString).pathComponents.last!.replacingOccurrences(of: "swift", with: "")
        print("\(str)\(methodName)[\(lineNumber)]:\(message)")
    #endif
}
let DBC_IS_IOS7 = (UIDevice.current.systemVersion as NSString).doubleValue >= 7.0
let DBC_IS_IOS8 = (UIDevice.current.systemVersion as NSString).doubleValue >= 8.0
let DBC_ScreenWidth = UIScreen.main.bounds.size.height
let DBC_ScreenHeight = UIScreen.main.bounds.size.width

