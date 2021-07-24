//
//  OutputViewModel.swift
//  Product Shop
//
//  Created by Клим on 24.07.2021.
//

import Foundation
protocol OutputViewModelProtocol {
    var name: String { get }
    var price: String { get }
    var imageData: Data? { get }
    var output: ListModel { get }
    init(output: ListModel)
}

class OutputViewModel: OutputViewModelProtocol {
    var name: String {
        output.name
    }
    
    var price: String {
        "\(output.price) р/кг"
    }
    
    var imageData: Data? {
        ImageFetch.shared.fetchImageData(from: output.image)
    }
    
    var output: ListModel
    
    required init(output: ListModel) {
        self.output = output
    }
    
    
}
