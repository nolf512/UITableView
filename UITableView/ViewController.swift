//
//  ViewController.swift
//  UITableView
//
//  Created by J on 2021/04/08.
//

import UIKit

class ViewController: UITableViewController {
    
    var cellTextArray = ["Hello"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNum))
     
    }
    
    @objc func addNum(){
        
        let ac = UIAlertController(title: "テキストを入力", message: nil, preferredStyle: .alert)
        ac.addTextField()
        ac.addAction(UIAlertAction(title: "追加", style: .default, handler: {[weak self, weak ac] _ in
            guard let newText = ac?.textFields?[0].text else {return}
            self?.cellTextArray.append(newText)
            print("addNum: \(newText)") //デバッグ
            
            
            self?.tableView.reloadData()
            
        }))
        
        present(ac, animated: true, completion: nil)

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

