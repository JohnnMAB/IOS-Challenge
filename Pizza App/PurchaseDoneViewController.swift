//
//  PurchaseDoneViewController.swift
//  Pizza App
//
//  Created by Jhonathan Mattos on 21/06/21.
//

import UIKit

class PurchaseDoneViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.layer.cornerRadius = 10
    }
}
