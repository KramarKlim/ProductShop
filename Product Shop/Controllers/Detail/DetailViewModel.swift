//
//  DetailViewModel.swift
//  Product Shop
//
//  Created by Клим on 23.07.2021.
//

import Foundation
import UIKit

protocol DetailViewModelProtocol {
    var name: String  { get }
    var price: String { get }
    var product: ListModel { get }
    var image: Data? { get }
    var count: Int { get set }
    init(product: ListModel, count: Int)
    func plus()
    func minus()
    
}
class DetailViewModel: DetailViewModelProtocol {
    var image: Data? {
        ImageFetch.shared.fetchImageData(from: product.image)
    }
    
    var count: Int
    
    var product: ListModel
    
    var name: String {
        product.name
    }
    
    var price: String {
        "\(product.price) рублей"
    }
    
    required init(product: ListModel, count: Int) {
        self.product = product
        self.count = count
    }
    
    func plus() {
        if count >= 0 {
            self.count += 1
        }
    }
    
    func minus() {
        if count > 0 {
            self.count -= 1
        }
    }
    
    
    
}
