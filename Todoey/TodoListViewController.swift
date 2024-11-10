//
//  ViewController.swift
//  Todoey
//
//  Created by Philipp Muellauer on 02/12/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Eating", "Coding", "Working Out"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    
    //MARK: - Tableview Datasource Methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a reusable cell with the identifier "ToDoItemCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        
        // Set the text label of the cell to the corresponding item in the itemArray
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
}

