//
//  RangeViewModel.swift
//  Product Shop
//
//  Created by Клим on 21.07.2021.
//

import Foundation

protocol RangeViewModelProtocol {
    var count: Int { get }
    var products: [ProductModel] { get }
    func productViewModel(for indexPath: IndexPath) -> ProductModelViewProtocol?
    func selectRow(at indexPath: IndexPath)
    func viewModelForSelectedRow() -> ListViewModelProtocol?
}

class RangeViewModel: RangeViewModelProtocol {
    
    var indexPath: IndexPath?
    
    var products: [ProductModel] = DataManager.shared.products
    
    var count: Int {
        products.count
    }
    
    func selectRow(at indexPath: IndexPath) {
        self.indexPath = indexPath
    }
    
    func productViewModel(for indexPath: IndexPath) -> ProductModelViewProtocol? {
        let product = products[indexPath.row]
        return ProductViewModel(product: product)
    }
    
    
    func viewModelForSelectedRow() -> ListViewModelProtocol? {
        guard let indexPath = indexPath else { return nil }
        
        switch indexPath.row {
        case 0: return ListViewModel(list: DataManager.shared.listFruits)
        case 1: return ListViewModel(list: DataManager.shared.listMeat)
        case 2: return ListViewModel(list: DataManager.shared.listVegetable)
        case 3: return ListViewModel(list: DataManager.shared.listCandy)
        case 4: return ListViewModel(list: DataManager.shared.listSnaks)
        case 5: return ListViewModel(list: DataManager.shared.listPasta)
        default: return nil
        }
    }
}



