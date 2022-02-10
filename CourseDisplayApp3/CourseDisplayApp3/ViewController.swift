//
//  ViewController.swift
//  CourseDisplayApp3
//
//  Created by Chava,Rashmi on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    
    @IBOutlet weak var crsTitle: UILabel!
    
    
    @IBOutlet weak var crsSem: UILabel!
    
    
    @IBOutlet weak var previousButton: UIButton!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "Network security", "Fall 2022"],["img02", "44643", "ios", "Spring 2022"], ["img03", "44656",
        "Data Streaming", "Fall 2022"]]
    
    var imageNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // The details of the course (image, crsNum, crsTitle, crsSem) in 0th position is displayed.
        
        updateUI(imageNum: imageNumber)
        //the previous button should be disabled
        previousButton.isEnabled = false
        
    }
    
    @IBAction func previousButtonClicked(_ sender: UIButton) {
        //next button should be enabled
        previousButton.isEnabled = true
        //update the course details by decrementing image number
        imageNumber -= 1
        updateUI(imageNum: imageNumber)
        //once you reach the begining of the array, previous button should be disabled.
        if(imageNumber == 0) {
            previousButton.isEnabled = false
        }
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        //update the UI of next course by incrementing image number
        imageNumber += 1
        updateUI(imageNum: imageNumber)
        //previous button should be enabled
        previousButton.isEnabled = true
        //once the user reach the end of array, the next button should be disabled.
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
    }
    
    func updateUI(imageNum:Int) {
        displayImage.image = UIImage(named: courses[imageNum][0])
        crsNum.text = courses[imageNum][1]
        crsTitle.text = courses[imageNum][2]
        crsSem.text = courses[imageNum][3]
    }
    

}

