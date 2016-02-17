//
//  SunnyConfigurationManager.swift
//  SunnyRouter
//
//  Created by jiazhaoyang on 16/2/16.
//  Copyright © 2016年 amaker. All rights reserved.
//

import Foundation

class SunnyConfigurationManager: NSObject{
    
    var configure:SunnyConfiguration?
    
    override init() {
        super.init()
        
        self.configure = SunnyConfiguration()
    }
    
}