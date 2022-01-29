//
//  ViewController.swift
//  TableViewController
//
//  Created by Paulo Henrique Bendazzoli on 29/01/22.
//

import UIKit

class TableViewController: UITableViewController {

    var foods: [String] = ["Lasanha", "Macarrão", "Pizza", "Panqueca"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foods.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseCell = "TableViewFoodsReuseCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseCell, for: indexPath)
        cell.textLabel?.text = foods[indexPath.row]
        return cell
    }
}

