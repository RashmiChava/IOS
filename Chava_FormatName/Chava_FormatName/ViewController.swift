//
//  ViewController.swift
//  Chava_FormatName
//
//  Created by Chava,Rashmi on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        
        var lName = lastNameTextField.text
        var fName = firstNameTextField.text
        
        detailsLabel.text = "Details"
        
        fullNameLabel.text = "Full Name: \(lName!), \(fName!)"
        
        var finitial = fName?.first
        var linitial = lName?.first
        
        initialsLabel.text = ("Initials: \(linitial!)\(finitial!)")
    }
    
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        detailsLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
    
}

