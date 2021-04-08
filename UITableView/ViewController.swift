//
//  ViewController.swift
//  UITableView
//
//  Created by J on 2021/04/08.
//

import UIKit

class ViewController: UITableViewController {
    
    var cellTextArray = ["1", "2", "3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
     
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = cellTextArray[indexPath.row]
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTextArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell tapped: ", cellTextArray[indexPath.row])
    }


}

