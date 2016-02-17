//
//  Configuration.swift
//  SunnyRouter
//
//  Created by jiazhaoyang on 16/2/16.
//  Copyright © 2016年 amaker. All rights reserved.
//

import Foundation

enum SunnyUrlStyle{
     case SunnyRURLStylePathInfo,SunnyRURLStyleQueryString
}

class SunnyConfiguration:NSObject {
    var schemes:NSArray?
    
    var URLStyle:SunnyUrlStyle?
    
    
    static func defaultConfiguration() -> SunnyConfiguration?{
        let defaultConf:SunnyConfiguration = SunnyConfiguration()
        defaultConf.schemes = nil
        defaultConf.URLStyle = SunnyUrlStyle.SunnyRURLStyleQueryString
        
        return defaultConf
    }
    
    
    
    
}