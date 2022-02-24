//
//  ViewController.swift
//  Chava_CurrencyConverter
//
//  Created by Chava,Rashmi on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var exchangeRate: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var inrLabel: UILabel!
    
    @IBOutlet weak var inrTextField: UITextField!
    
    @IBOutlet weak var usdLabel: UILabel!
    
    
    @IBOutlet weak var usdTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func convertCurrencyButton(_ sender: UIButton) {
        
        var name = nameTextField.text
        
        var inr = Int(inrTextField.text!)
        var usd = Int(usdTextField.text!)
        
        var usdtoinr = round(Double(usd!) * 74.64 * 100) / 100.0
        var inrtousd = round(Double(inr!) * 74.64 * 100) / 100.0
        
        resultLabel.text = "Hello \(name!),\nAmount Rs.\(inr!) in USD is $\(inrtousd)\nAmount $\(usd!) in INR is Rs.\(usdtoinr)"
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

