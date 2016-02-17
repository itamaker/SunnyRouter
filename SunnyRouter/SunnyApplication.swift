//
//  SunnyApplication.swift
//  SunnyRouter
//
//  Created by amaker on 15/12/5.
//  Copyright © 2015年 amaker. All rights reserved.
//

import Foundation

private let sharedInstance = SunnyApplication()

class SunnyApplication:NSObject{
    
    var core:SunnyCore?
    
    class var sharedManager : SunnyApplication {
            return sharedInstance
    }
    
    override init() {
        super.init()
        self.core = SunnyCore()
    }
    
    func addNode(node:SunnyNode){
        self.core?.nodeManager?.addNode(node)
    }
    
    func canOpenURL(url:NSURL) -> Bool{
        
        
        return false
    }
    
    
    func openURL(url:NSURL) ->AnyObject{
        
        return 0
    }
    
    func openURL(url:NSURL,sourceObject:NSObject) ->AnyObject{
        
        return 0
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}