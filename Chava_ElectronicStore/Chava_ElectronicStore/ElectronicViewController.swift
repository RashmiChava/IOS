//
//  ViewController.swift
//  Chava_ElectronicStore
//
//  Created by Chava,Rashmi on 4/26/22.
//

import UIKit

class Product {
    
    var productName : String?
        var productPrice : String?
        
        init(prodName: String, prodPrice: String){
            self.productName = prodName;
            self.productPrice = prodPrice;
        }
}

class ElectronicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = productsArray[indexPath.row].productName
        return cell
    }
    
    var productsArray = [Product]()

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    @IBAction func addProductButtonAction(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
                
        let product1 = Product(prodName: "One Plus 10", prodPrice: "750$")
        productsArray.append(product1)
                
        let product2 = Product(prodName: "iPhone 12", prodPrice: "900$")
        productsArray.append(product2)
                
        let product3 = Product(prodName: "Air Pods Pro", prodPrice: "249$")
        productsArray.append(product3)
        
        let product4 = Product(prodName: "Charging Case", prodPrice: "40$")
        productsArray.append(product4)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            
    }


}

