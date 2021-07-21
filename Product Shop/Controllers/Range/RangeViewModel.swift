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
    func indexRow(at indexPath: IndexPath)
}

class RangeViewModel: RangeViewModelProtocol {
    
    var indexPath: IndexPath?
    
    var products: [ProductModel] = DataManager.products
    
    var count: Int {
        products.count
    }
    
    func indexRow(at indexPath: IndexPath) {
        self.indexPath = indexPath
    }
    
    func productViewModel(for indexPath: IndexPath) -> ProductModelViewProtocol? {
        let product = products[indexPath.row]
        return ProductViewModel(product: product)
    }
}



