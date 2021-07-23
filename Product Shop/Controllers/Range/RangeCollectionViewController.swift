//
//  RangeCollectionViewController.swift
//  Product Shop
//
//  Created by Клим on 21.07.2021.
//

import UIKit



class RangeCollectionViewController: UICollectionViewController {
    
    var viewModel: RangeViewModelProtocol = RangeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()


    }


    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return viewModel.products.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProductCollectionViewCell
        
        let productViewModel = viewModel.productViewModel(for: indexPath)
        cell.viewModel = productViewModel
        
        return cell 
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        viewModel.selectRow(at: indexPath)
        let listViewModel = viewModel.viewModelForSelectedRow()
        
        
        performSegue(withIdentifier: "showList", sender: listViewModel)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let listVC = segue.destination as! ListTableViewController
        listVC.viewModel = sender as? ListViewModelProtocol
    }

}
