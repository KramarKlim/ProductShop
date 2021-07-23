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
        let cell = tableView.dequeueReusableCell(withIdentifier: "solo", for: indexPath)
        let merch = viewModel.list[indexPath.row]
        cell.textLabel?.text = merch.name
        cell.textLabel?.font = UIFont.systemFont(ofSize: 20.0)
        cell.detailTextLabel?.text = "\(merch.price) р/кг"
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 15.0)
        DispatchQueue.main.async {
            guard let imageData = ImageFetch.shared.fetchImageData(from: merch.image) else { return }
            cell.imageView?.image = UIImage(data: imageData)
        }
        
        
        return cell
    }
}
