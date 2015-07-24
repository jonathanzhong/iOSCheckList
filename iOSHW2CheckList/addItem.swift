//
//  addItem.swift
//  
//
//  Created by Yonglin Zhong on 7/23/15.
//
//

import UIKit

class addItem: UITableViewController {
    var toDoItem: ToDoItem?
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender as? NSObject != self.doneButton {
            return
        }
        if !self.textfield.text.isEmpty{
            self.toDoItem = ToDoItem(name: self.textfield.text)
        }
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
}
