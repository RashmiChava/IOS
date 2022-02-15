//
//  ViewController.swift
//  DiscountApp
//
//  Created by Chava,Rashmi on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amount: UITextField!
    
    @IBOutlet weak var discount: UITextField!
    
    @IBOutlet weak var priceAfterDiscount: UILabel!

    @IBAction func buttonClicked(_ sender: UIButton) {
        
        var amount = Double(amount.text!)
        var discount = Double(discount.text!)
        var priceAfterDiscount1 = String(amount! - (amount!*discount!/100))
        
        priceAfterDiscount.text = ("The Final Price is : \(finalPrice)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

