//
//  PizzaListScreenViewController.swift
//  Pizza App
//
//  Created by Jhonathan Mattos on 20/06/21.
//

import UIKit

class PizzaListScreenViewController: UIViewController {
    
    struct Constants {
        static let kPeperoniPizza = "Pizza Peperoni"
        static let kMuçarelaPizza = "Pizza Muçarela"
        static let kPortuguesaPizza = "Pizza Portuguesa"
        static let kAModaPizza = "Pizza A Moda"
        static let kPaulistaPizza = "Pizza Paulista"
        static let kChampignonPizza = "Pizza Champignon"
        static let kMargueritaPizza = "Pizza Marguerita"
        static let kNapolitanaPizza = "Pizza Napolitana"
        static let kFrangoCatupiryPizza = "Pizza Frango Catupiry"
    }
    
    var pizzaImage: [Pizza] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pizzaImage = createArray()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Pizza] {
        
        var pizzaList: [Pizza] = []
        
        let pizza1 = Pizza(image: #imageLiteral(resourceName: "PizzaList"), title: Constants.kPeperoniPizza)
        let pizza2 = Pizza(image: #imageLiteral(resourceName: "PizzaList"), title: Constants.kMuçarelaPizza)
        let pizza3 = Pizza(image: #imageLiteral(resourceName: "PizzaList"), title: Constants.kPortuguesaPizza)
        let pizza4 = Pizza(image: #imageLiteral(resourceName: "PizzaList"), title: Constants.kAModaPizza)
        let pizza5 = Pizza(image: #imageLiteral(resourceName: "PizzaList"), title: Constants.kPaulistaPizza)
        let pizza6 = Pizza(image: #imageLiteral(resourceName: "PizzaList"), title: Constants.kChampignonPizza)
        let pizza7 = Pizza(image: #imageLiteral(resourceName: "PizzaList"), title: Constants.kMargueritaPizza)
        let pizza8 = Pizza(image: #imageLiteral(resourceName: "PizzaList"), title: Constants.kNapolitanaPizza)
        let pizza9 = Pizza(image: #imageLiteral(resourceName: "PizzaList"), title: Constants.kFrangoCatupiryPizza)
        
        pizzaList.append(pizza1)
        pizzaList.append(pizza2)
        pizzaList.append(pizza3)
        pizzaList.append(pizza4)
        pizzaList.append(pizza5)
        pizzaList.append(pizza6)
        pizzaList.append(pizza7)
        pizzaList.append(pizza8)
        pizzaList.append(pizza9)
        
        return pizzaList
    }
}

extension PizzaListScreenViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pizza = pizzaImage[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PizzaCell") as! PizzaCell
        cell.layer.cornerRadius = 10
        cell.setImage(image: pizza)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzaImage.count
    }
}
