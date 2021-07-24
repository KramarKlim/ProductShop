//
//  ListTableViewController.swift
//  Product Shop
//
//  Created by Клим on 22.07.2021.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var viewModel: ListViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "solo", for: indexPath) as! OutputTableViewCell
        
        let outputViewModel = viewModel.outputViewModel(for: indexPath)
        cell.viewModel = outputViewModel
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        viewModel.selectRow(at: indexPath)
        let detailViewModel = viewModel.viewModelForSelectedRow()
        
        performSegue(withIdentifier: "detail", sender: detailViewModel)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! DetailViewController
        detailVC.viewModel = sender as? DetailViewModelProtocol
        
    }
    
}
