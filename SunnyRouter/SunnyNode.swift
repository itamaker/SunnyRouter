//
//  SunnyNode.swift
//  SunnyRouter
//
//  Created by amaker on 15/12/5.
//  Copyright © 2015年 amaker. All rights reserved.
//

import Foundation

typealias SunnyNodeExecutingBlock=(NSURL,NSDictionary,NSObject) -> Void
typealias SunnyNodeReturnableBlock = (NSURL,NSDictionary,NSObject) ->Void


class SunnyNode: NSObject {
    
    //外部应用不能通过URL进行调用，只有应用内部可以调用
    var isPrivate:Bool?
    //xxx://yyy/ <-- yyy
    var identifier:String?
    //路由被触发后，将执行此Block
    var executingBlock:SunnyNodeExecutingBlock?
    //路由被触发后，将执行此Block，同时返回Block返回的对象
    var returnableBlock:SunnyNodeReturnableBlock?
    // xxx://yyy/ <-- xxx
    var mScheme:String?
    // 使用正则匹配
    var usePattern:Bool?

    
    init(identifier:String,executingBlock:SunnyNodeExecutingBlock){
        self.identifier = identifier
        self.executingBlock = executingBlock
    }
    
    init(identifier:String,scheme:String,usePattern:Bool,executingBlock:SunnyNodeExecutingBlock){
        self.identifier  = identifier
        self.mScheme = scheme
        self.usePattern = usePattern
        self.executingBlock = executingBlock
    }
    
    init(identifier:String,returnableBlock:SunnyNodeReturnableBlock) {
        self.identifier = identifier
        self.returnableBlock = returnableBlock
    }
    
    init(identifier:String,scheme:String,usePattern:Bool,returnableBlock:SunnyNodeReturnableBlock){
        self.identifier  = identifier
        self.mScheme = scheme
        self.usePattern = usePattern
        self.returnableBlock = returnableBlock
    }
    
    
    
}
