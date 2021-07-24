//
//  BasketTableViewController.swift
//  Product Shop
//
//  Created by Клим on 24.07.2021.
//

import UIKit

class BasketTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SaveData.shared.fetchData()
        print(SaveData.shared.items)
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SaveData.shared.items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "raw", for: indexPath) as! CustomTableViewCell
        let item = SaveData.shared.items[indexPath.row]
        cell.viewModel = CustomModelView(product: item)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            SaveData.shared.deleteTask(for: indexPath.row)
            let deleteIndexPath = IndexPath(row: indexPath.row, section: 0)
            tableView.deleteRows(at: [deleteIndexPath], with: .automatic)
            tableView.reloadData()
        }
    }
}
