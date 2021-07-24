//
//  CustomTableViewCell.swift
//  Product Shop
//
//  Created by Клим on 24.07.2021.
//

import UIKit


class CustomTableViewCell: UITableViewCell {
    
    var viewModel: CustomModelViewProtocol! {
        didSet {
            nameLabel.text = viewModel.name
            countLabel.text = viewModel.count
            priceLabel.text = viewModel.price
        }
    }

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
}
