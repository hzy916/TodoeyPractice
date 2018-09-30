//
//  ViewController.swift
//  Todoey
//
//  Created by 何紫芸 on 2018/4/22.
//  Copyright © 2018年 何紫芸. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
	
	let itemArray = ["go swimming", "buy food", "watch tutorials"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	//Mark - Tableview datasource methods
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return itemArray.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
		cell.textLabel?.text = itemArray[indexPath.row]
		
		return cell
		
	}

	//MARK - Tableview delegate method
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
			tableView.cellForRow(at: indexPath)?.accessoryType = .none
		} else {
			tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
		}
		
		
		
		tableView.deselectRow(at: indexPath, animated: true)
		
	}

}

