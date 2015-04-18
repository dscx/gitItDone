//
//  SecondViewController.swift
//  Git It Done
//
//  Created by Dan on 4/17/15.
//  Copyright (c) 2015 dscx. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textTask: UITextField!
    @IBOutlet var textDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        //IOS Touch Functions
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    @IBAction func btnAddTask_Click(sender: UIButton){
        taskMgr.addTask(textTask.text, desc: textDesc.text)
        self.view.endEditing(true)
        textTask.text = " "
        textDesc.text = " "
        self.tabBarController?.selectedIndex = 0;
    }
    

    
    
    //UITextField Delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }


}

