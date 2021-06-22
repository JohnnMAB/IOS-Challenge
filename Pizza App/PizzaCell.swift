//
//  PizzaCell.swift
//  Pizza App
//
//  Created by Jhonathan Mattos on 20/06/21.
//

import UIKit

class PizzaCell: UITableViewCell {
    
    @IBOutlet weak var pizzaImageView: UIImageView!
    @IBOutlet weak var pizzaFlavourLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceDescriptionLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        customizingCells()
    }
    
    func customizingCells() {
        backgroundColor = UIColor.black
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8))
    }
    
    func setImage(image: Pizza) {
        pizzaImageView.image = image.image
        pizzaFlavourLabel.text = image.title
    }
}
