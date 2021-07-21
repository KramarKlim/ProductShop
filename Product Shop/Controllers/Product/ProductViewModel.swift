//
//  ProductViewModel.swift
//  Product Shop
//
//  Created by Клим on 21.07.2021.
//

import Foundation

protocol ProductModelViewProtocol {
    var name: String { get }
    var imageData: Data? { get }
    var product: ProductModel! { get }
    init(product: ProductModel)
}

class ProductViewModel: ProductModelViewProtocol {
    var name: String {
        product.name
    }
    var imageData: Data? {
        ImageFetch.shared.fetchImageData(from: product.image)
    }
    
    var product: ProductModel!
    required init(product: ProductModel) {
        self.product = product
    }
    
}
