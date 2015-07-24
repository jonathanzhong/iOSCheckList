//
//  nameofCheckList.swift
//  
//
//  Created by Yonglin Zhong on 7/23/15.
//
//
import UIKit

class nameofCheckList: UITableViewController {
    
    
    
    var toDoItems: NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()
        
        println("working")
    }
    
    
    
    func loadInitialData() {
        
        var item1 = ToDoItem(name: "Buy milk")
        self.toDoItems.addObject(item1)
        
        var item2 = ToDoItem(name: "Buye eggs")
        self.toDoItems.addObject(item2)
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.toDoItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let CellIndentifier: NSString = "ListPrototypeCell"
        
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIndentifier as String) as! UITableViewCell
        
        var todoitem: ToDoItem = self.toDoItems.objectAtIndex(indexPath.row) as! ToDoItem
        
        cell.textLabel?.text = todoitem.itemName as String
        
        if todoitem.completed{
            
            cell.accessoryType = .Checkmark
            
        }
            
        else{
            
            cell.accessoryType = .None
            
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        var tappedItem: ToDoItem = self.toDoItems.objectAtIndex(indexPath.row) as! ToDoItem
        tappedItem.completed = !tappedItem.completed
        tableView.reloadData()
        
    }
    
}