//
//  SunnyNodeManager.swift
//  SunnyRouter
//
//  Created by amaker on 15/12/5.
//  Copyright © 2015年 amaker. All rights reserved.
//

import Foundation


class SunnyNodeManager: NSObject {
    
    var nodes:NSArray
     override init() {
        self.nodes = []
    }
    
    
    func addNode(node:SunnyNode){
        let arrayNode = self.nodes.copy() as! NSMutableArray
        arrayNode.addObject(node)
        self.nodes = arrayNode
    }
    
    func nodeForURL(mUrl:NSURL)->SunnyNode{
        var node:SunnyNode?
        self.nodes.enumerateObjectsUsingBlock({ object, index, stop in
            let obj = object as! SunnyNode
            if obj.usePattern != nil {
                if obj.mScheme == nil || obj.mScheme?.lowercaseString == mUrl.scheme.lowercaseString {
                    if obj.identifier?.lowercaseString == mUrl.host?.lowercaseString {
                        node = obj
                        let shouldStop: ObjCBool = true
                        stop.initialize(shouldStop)
                    }
                }
            }else{
                var schemeMatch:Bool = false
                var identifierMatch:Bool = false
                
//                if mUrl.scheme == nil {
//                    schemeMatch = false;
//                }else
                
                if obj.mScheme == nil {
                    let schemeExpression = try! NSRegularExpression(pattern:obj.mScheme!,options:NSRegularExpressionOptions.CaseInsensitive);
                    schemeMatch =  schemeExpression.numberOfMatchesInString(mUrl.scheme, options: NSMatchingOptions.ReportCompletion, range: NSMakeRange(0, mUrl.scheme.characters.count)).toBool()!
                }
                else{
                    schemeMatch = true
                }
                
                if mUrl.host == nil {
                    identifierMatch = true
                }
                else if obj.identifier != nil {
                    let schemeExpression = try! NSRegularExpression(pattern:obj.mScheme!,options:NSRegularExpressionOptions.CaseInsensitive);
                    identifierMatch =  schemeExpression.numberOfMatchesInString(mUrl.host!, options: NSMatchingOptions.ReportCompletion, range: NSMakeRange(0, mUrl.host!.characters.count)).toBool()!
                }
                
                if schemeMatch && identifierMatch {
                    node = obj
                    let shouldStop: ObjCBool = true
                    stop.initialize(shouldStop)
                }
            }
        })
        return node!
    }
    
}