//
//  RequestDataManager.swift
//  SwiftMusicDemo
//
//  Created by huchunyuan on 15/10/26.
//  Copyright © 2015年 LafreeTream. All rights reserved.
//

import UIKit
typealias block = () ->Void
class RequestDataManager: NSObject {
    
    // 创建单例
    internal static let singleton:RequestDataManager = RequestDataManager()
    
    var allDataArray = NSMutableArray()
    
    // 请求方法
    func getDataWithUrl(musicUrl:String , RequestDataManagerBlock:block){
        // 子线程
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            
            let url = NSURL(string: musicUrl)
            let array = NSMutableArray(contentsOfURL:url!)!
            for item in array {
                let model = MusicModel()
                
                // 通过字典给model赋值
                model.setValuesForKeysWithDictionary(item as! [String : AnyObject])
                
                // 添加到数组中
                self.allDataArray.addObject(model)
                
                
            }
            // 返回主线程
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                RequestDataManagerBlock()
            })
            
        }
    
    }
    func getModelWithIndex(index:NSInteger) ->MusicModel{
    
        return self.allDataArray[index] as! MusicModel
    }
}
