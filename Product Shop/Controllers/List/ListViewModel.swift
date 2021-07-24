//
//  ListViewModel.swift
//  Product Shop
//
//  Created by Клим on 22.07.2021.
//

import Foundation

protocol ListViewModelProtocol {
    var list: [ListModel] { get }
    var count: Int { get }
    init(list: [ListModel])
    func viewModelForSelectedRow() -> DetailViewModelProtocol?
    func selectRow(at indexPath: IndexPath)
    func outputViewModel(for indexPath: IndexPath) -> OutputViewModelProtocol?

}

class ListViewModel: ListViewModelProtocol {
    
    var indexPath: IndexPath?
    
    var count: Int {
        list.count
    }
    
    var list: [ListModel]
    
    required init(list: [ListModel]) {
        self.list = list
    }
    
    func selectRow(at indexPath: IndexPath) {
        self.indexPath = indexPath
    }
    
    func viewModelForSelectedRow() -> DetailViewModelProtocol? {
        guard let indexPath = indexPath else { return nil}
        let detail = list[indexPath.row]
        return DetailViewModel(product: detail, count: 1)
    }
    
    func outputViewModel(for indexPath: IndexPath) -> OutputViewModelProtocol? {
        let output = list[indexPath.row]
        return OutputViewModel(output: output)
    }
}
