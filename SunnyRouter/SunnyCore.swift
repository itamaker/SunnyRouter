//
//  SunnyCore.swift
//  SunnyRouter
//
//  Created by amaker on 15/12/5.
//  Copyright © 2015年 amaker. All rights reserved.
//

import Foundation


class SunnyCore: NSObject {
    
    var nodeManager:SunnyNodeManager?
    var configurationManager:SunnyConfigurationManager?
    
    
    override init() {
        super.init()
        self.nodeManager = SunnyNodeManager()
        self.configurationManager = SunnyConfigurationManager()
        
        
    }
    
}