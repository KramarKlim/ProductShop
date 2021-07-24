//
//  DetailViewController.swift
//  Product Shop
//
//  Created by Клим on 23.07.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    var viewModel: DetailViewModelProtocol!
    
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var countTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    @IBAction func plusButtonAction(_ sender: Any) {
        viewModel.plus()
        change()
    }
    
    @IBAction func minusButtonAction(_ sender: Any) {
        viewModel.minus()
        change()
    }
    
    
    @IBAction func SaveButtonAction() {
        SaveData.shared.saveItem(name: nameLabel.text ?? "", count: countTextField.text ?? "", price: priceLabel.text ?? "")
        navigationController?.popViewController(animated: true)
    }
    
    
    private func setUp() {
        nameLabel.text = viewModel.name
        priceLabel.text = viewModel.price
        countTextField.text = String(viewModel.count)
        DispatchQueue.main.async {
            guard let image = self.viewModel.image else { return }
            self.productImage.image = UIImage(data: image)
        }
    }
    
    private func change() {
        countTextField.text = String(viewModel.count)
        priceLabel.text = viewModel.price
    }
}
