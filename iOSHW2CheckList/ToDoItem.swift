//
//  ToDoItem.swift
//  iOSHW2CheckList
//
//  Created by Yonglin Zhong on 7/23/15.
//  Copyright (c) 2015 Yonglin Zhong. All rights reserved.
//

import Foundation

class ToDoItem: NSObject {
    var itemName: NSString = ""
    var completed: Bool = false
    var creationDate: NSDate = NSDate()
    
    init(name: String) {
        self.itemName = name
    }
}