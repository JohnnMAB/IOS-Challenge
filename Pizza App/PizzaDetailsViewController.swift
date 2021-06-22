//
//  PizzaDetailsViewController.swift
//  Pizza App
//
//  Created by Jhonathan Mattos on 19/06/21.
//

import UIKit

class PizzaDetailsViewController: UIViewController {
    
    struct Constants {
        static let kSmallPizzaPrice = "R$ 29,99"
        static let kMediumPizzaPrice = "R$ 39,99"
        static let kBigPizzaPrice = "R$ 49,99"
    }
     
    let customGreenColor = UIColor.init(red: 122/255, green: 198/255, blue: 79/255, alpha: 1)
    
    @IBOutlet weak var buttonP: UIButton!
    @IBOutlet weak var buttonM: UIButton!
    @IBOutlet weak var buttonG: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var pizzaName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = customGreenColor
        roundedCorner(buttonP: buttonP, buttonM: buttonM, buttonG: buttonG)
    }
    
    @IBAction func buttonPPressed(_ sender: Any) {
        setPriceText(label: priceLabel, price: Constants.kSmallPizzaPrice)
        
        self.buttonP.backgroundColor = customGreenColor
        self.buttonM.backgroundColor = UIColor.white
        self.buttonG.backgroundColor = UIColor.white
        
        self.buttonP.setTitleColor(UIColor.white, for: .normal)
        self.buttonM.setTitleColor(UIColor.black, for: .normal)
        self.buttonG.setTitleColor(UIColor.black, for: .normal)
        
    }
    
    @IBAction func buttonMPressed(_ sender: Any) {
        setPriceText(label: priceLabel, price: Constants.kMediumPizzaPrice)
        
        self.buttonM.backgroundColor = customGreenColor
        self.buttonP.backgroundColor = UIColor.white
        self.buttonG.backgroundColor = UIColor.white
        
        self.buttonP.setTitleColor(UIColor.black, for: .normal)
        self.buttonM.setTitleColor(UIColor.white, for: .normal)
        self.buttonG.setTitleColor(UIColor.black, for: .normal)
        
    }
    
    @IBAction func buttonGPressed(_ sender: Any) {
        setPriceText(label: priceLabel, price: Constants.kBigPizzaPrice)
        
        self.buttonG.backgroundColor = customGreenColor
        self.buttonM.backgroundColor = UIColor.white
        self.buttonP.backgroundColor = UIColor.white
        
        self.buttonP.setTitleColor(UIColor.black, for: .normal)
        self.buttonM.setTitleColor(UIColor.black, for: .normal)
        self.buttonG.setTitleColor(UIColor.white, for: .normal)
        
    }
    
    func setPriceText(label: UILabel, price: String) {
        label.text = price
    }
    
    func roundedCorner(buttonP: UIButton, buttonM: UIButton, buttonG: UIButton) {
        buttonP.layer.cornerRadius = 10
        buttonM.layer.cornerRadius = 10
        buttonG.layer.cornerRadius = 10
    }
}
