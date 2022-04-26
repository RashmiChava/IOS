//
//  CreateProductViewController.swift
//  Chava_ElectronicStore
//
//  Created by Chava,Rashmi on 4/26/22.
//

import UIKit

class CreateProductViewController: UIViewController {

    @IBOutlet weak var productName: UITextField!
    
    @IBOutlet weak var productPrice: UITextField!
    
    @IBOutlet weak var AddButtonAction: UIButton!
    
    var product : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        productName.text = "\((product?.productName)!)"
        productPrice.text = "\((product?.productPrice)!)"
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
