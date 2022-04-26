//
//  DetailViewController.swift
//  Chava_ElectronicStore
//
//  Created by Chava,Rashmi on 4/26/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var displayProductLabel: UILabel!
    
    
    @IBOutlet weak var displayProductPriceLabel: UILabel!
    
    var product : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayProductLabel.text = "\((product?.productName)!)"
        displayProductPriceLabel.text = "\((product?.productPrice)!)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
