//
//  CheckListViewController.swift
//  
//
//  Created by Yonglin Zhong on 7/23/15.
//
//

import UIKit

class CheckListViewController: UITableViewController {
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        var source: addCheckList = segue.sourceViewController as! addCheckList
        if var list: ToDoList = source.toDoList {
            self.toDoList.addObject(list)
            self.tableView.reloadData()
        }
    }
    
    var toDoList: NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()
        println("CheckList")
    }
    
    
    func loadInitialData() {
        var list1 = ToDoList(name: "Grocery")
        self.toDoList.addObject(list1)
        
        var list2 = ToDoList(name: "Shopping")
        self.toDoList.addObject(list2)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.toDoList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIndentifier: NSString = "checklists"
        
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIndentifier as String) as! UITableViewCell
        
        var todolist: ToDoList = self.toDoList.objectAtIndex(indexPath.row) as! ToDoList
        
        cell.textLabel?.text = todolist.listName as String
        
        if todolist.completed{
            cell.accessoryType = .Checkmark
        }
            
        else {
            cell.accessoryType = .None
        }
        
        return cell
        
    }
}
