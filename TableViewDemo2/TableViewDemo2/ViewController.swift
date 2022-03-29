//
//  ViewController.swift
//  TableViewDemo2
//
//  Created by Chava,Rashmi on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(prodName: String, prodCategory: String) {
        self.productName = prodName;
        self.productCategory = prodCategory;
    }
    
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt
                   indexPath: IndexPath) -> UITableViewCell {
        //Create a cell
        var
        cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        
        //Assign data to the cell.
        cell.textLabel?.text = productsArray[indexPath.row].productName
        return cell;
    }

    //Create a products Array
    var productsArray = [Product]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let product1 = Product(prodName:
                                "MacBookAir", prodCategory: "Laptop")
        productsArray.append(product1)
        
        let product2 = Product(prodName: "iphone", prodCategory: "Mobile phone")
        productsArray.append(product2)
        
        let product3 = Product(prodName: "Airpods", prodCategory: "Accessories")
        productsArray.append(product3)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailsSegue"{
            let destination = segue.destination as! DetailsViewController
            
            destination.product =
            productsArray[(tableView.indexPathForSelectedRow!.row)]
        }
    }


}

