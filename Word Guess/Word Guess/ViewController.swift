//
//  ViewController.swift
//  Word Guess
//
//  Created by Chava,Rashmi on 2/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBOutlet weak var HintLabel: UILabel!

    
    @IBOutlet weak var LetterEntered: UITextField!
    
    @IBOutlet weak var CheckButton: UIButton!
    
    @IBOutlet weak var StatusLabel: UILabel!
    
    @IBOutlet weak var PlayAgainButton: UIButton!
    
    var words = [["SWIFT", "Programming Language"],
    ["DOG", "Animal"],
    ["CYCLE", "Two wheeler"],
    ["MACBOOK", "Apple device"]]
    
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Check Button should be disabled
        CheckButton.isEnabled = false;
        // Get the first word from the array
        word = words[count][0]
        
        DisplayLabel.text = ""
        
        //Populate the display label with the underscores. The # of underscores is equal to the # of characters in the word.
        updateUnderScores();
        
        //Get the first hint from the array
        HintLabel.text = "Hint: "+words[count][1]
        
        //Clear the status label initially.
        StatusLabel.text = ""
        
    }

    @IBAction func CheckButtonClicked(_ sender: Any) {
        
        //Get the text from the text field.
                var letter = LetterEntered.text!
                
                //Replace the guessed letter if the letter is part of the word.
        lettersGuessed = lettersGuessed + letter
                 var revealedWord = ""
                for l in word{
                    if lettersGuessed.contains(l){
                        revealedWord += "\(l)"
                    }
                    else{
                        revealedWord += "_ "
                    }
                }
                //Assigning the word to displaylabel after a guess
                DisplayLabel.text = revealedWord
                LetterEntered.text = ""
                
                //If the word is guessed correctly, we are enabling play again button and disabling the check button.
                if DisplayLabel.text!.contains("_") == false{
                    PlayAgainButton.isHidden = false;
                    CheckButton.isEnabled = false;
                }
                CheckButton.isEnabled = false
    }
    
    @IBAction func PlayAgainButtonClicked(_ sender: UIButton) {
    
        //Reset the button to disable initially.
                PlayAgainButton.isHidden = true
                //clear the label
                lettersGuessed = ""
                count += 1
                //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
                if count == words.count{
                    
                    StatusLabel.text = "Congruations! You are done with the game!"
                    //clearing the labels.
                    DisplayLabel.text = ""
                    HintLabel.text = ""
                }
                else{
                    //fetch the next word from the array
                    word = words[count][0]
                    //fetch the hint related to the word
                    HintLabel.text = "Hint: "
                    HintLabel.text! += words[count][1]
                    //Enabling the check button.
                    CheckButton.isEnabled = true
                    
                    DisplayLabel.text = ""
                    updateUnderScores()
                }
    
    }
    
    @IBAction func EnterLabelChanged(_ sender: UITextField) {
        
        //Read the data from the text field
                var textEnterd = LetterEntered.text!;
                //Consider only the last character by calling textEntered.last and trimming the white spaces.
                textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
                LetterEntered.text = textEnterd
                
                //Check whether the entered text is empty or not to enable check button.
                if textEnterd.isEmpty{
                    CheckButton.isEnabled = false
                }
                else{
                    CheckButton.isEnabled = true
                    
                }
                
    }
    
    func updateUnderScores() {
        for letter in word {
            DisplayLabel.text! += "-"
        }
    }
    
    
    
}

