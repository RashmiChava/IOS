//
//  ViewController.swift
//  VowelTester
//
//  Created by Chava,Rashmi on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
    //read the text
    var enteredText = textOutlet.text!
    
    //Check  the text has vowel or not
    if(enteredText.contains("a") ||
       enteredText.contains("e") ||
       enteredText.contains("i") ||
       enteredText.contains("o") ||
       enteredText.contains("u")){
        DisplayLabel.text = "The text has vowel"
    }
    else {
        DisplayLabel.text = "No vowels found!"
    }
}
    
}

