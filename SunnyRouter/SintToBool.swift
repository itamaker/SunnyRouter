//
//  SintToBool.swift
//  SunnyRouter
//
//  Created by amaker on 15/12/5.
//  Copyright © 2015年 amaker. All rights reserved.
//

import Foundation

extension Int {
    
    func toBool () ->Bool? {
        
        switch self {
            
        case 0:
            return false
            
        case 1:
            return true
            
        default:
            return nil
        }
        
    }
}