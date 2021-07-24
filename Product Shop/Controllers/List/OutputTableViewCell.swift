//
//  OutputTableViewCell.swift
//  Product Shop
//
//  Created by Клим on 24.07.2021.
//

import UIKit

class OutputTableViewCell: UITableViewCell {

    @IBOutlet var outImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    
    var viewModel: OutputViewModelProtocol! {
        didSet {
            nameLabel.text = viewModel.name
            priceLabel.text = viewModel.price
            DispatchQueue.main.async {
                guard let image = self.viewModel.imageData else { return }
                self.outImage.image = UIImage(data: image)
            }
        }
    }
}
