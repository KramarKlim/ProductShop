//
//  CustomModelView.swift
//  Product Shop
//
//  Created by Клим on 24.07.2021.
//

import Foundation

protocol CustomModelViewProtocol {
    var product: Product { get }
    var name: String { get }
    var price: String { get }
    var count: String { get }
    init(product: Product)
}

class CustomModelView: CustomModelViewProtocol {
    var count: String {
        product.count ?? ""
    }
    
    var product: Product
    
    var name: String {
        product.name ?? ""
    }
    
    var price: String {
        product.price ?? ""
    }
    
    required init(product: Product) {
        self.product = product
    }
    
    
}
