//
//  ViewController.swift
//  Chava_BookCheckoutApp
//
//  Created by student on 4/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameOutlet: UITextField!
    
    @IBOutlet weak var bookIdOutlet: UITextField!
    
    @IBOutlet weak var Imageoutlet: UIImageView!
    @IBOutlet weak var BookFound: UILabel!
    
    @IBOutlet weak var Checkout: UIButton!
    var bookfound = Book()
    
    var isBook = false
    
    var BookArray = booksArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Checkout.isHidden = true
    }

    
    
    @IBAction func BookAction(_ sender: UIButton) {
        
        let enteredId = bookIdOutlet.text!
        
        for book in BookArray {
            if enteredId == book.bookId{
                bookfound = book
                isBook = true
                
                BookFound.text = "Book with ID" + enteredId + "found!"
                //Imageoutlet.image = UIImage(book.bookImage)
                
                Checkout.isHidden = false
                
                
                
                
            }
            else{
                BookFound.text = "Book not Found!"
            }
            
            
                
                
                
        }
        
    }
    

    
}

