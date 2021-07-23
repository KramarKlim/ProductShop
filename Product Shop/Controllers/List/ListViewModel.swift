//
//  ListViewModel.swift
//  Product Shop
//
//  Created by Клим on 22.07.2021.
//

import Foundation

protocol ListViewModelProtocol {
    var list: [ListModel] { get }
    init(list: [ListModel])
    var count: Int { get }
}

class ListViewModel: ListViewModelProtocol {
    
    var count: Int {
        list.count
    }
    
    var list: [ListModel]
    required init(list: [ListModel]) {
        self.list = list
    }
}
