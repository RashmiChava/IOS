//
//  ViewController.swift
//  HelloApp
//
//  Created by Chava,Rashmi on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameOutlet: UITextField!
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: UIButton) {
        //Read the text from the text field and store it in a variable.
        var firstName = firstNameOutlet.text!
        var lastName = lastNameOutlet.text!
        
        //assign the text to the display label in this format Hello, name!
        displayLabel.text = "Hello, \(firstName) \(lastName)!"
    }
    
}

