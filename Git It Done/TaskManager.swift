//
//  TaskManager.swift
//  Git It Done
//
//  Created by Dan on 4/17/15.
//  Copyright (c) 2015 dscx. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }

}
