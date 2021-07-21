//
//  ProductCollectionViewCell.swift
//  Product Shop
//
//  Created by Клим on 21.07.2021.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    var viewModel: ProductModelViewProtocol! {
        didSet {
            nameProductLabel.text = viewModel.name
            DispatchQueue.main.async {
                guard let imageData = self.viewModel.imageData else { return }
                self.productImage.image = UIImage(data: imageData)
            }
        }
    }
    
    @IBOutlet var nameProductLabel: UILabel!
    @IBOutlet var productImage: UIImageView!
    
    
}
