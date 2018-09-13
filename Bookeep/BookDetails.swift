//
//  BookDetails.swift
//  Bookeep
//
//  Created by Daniel Cohen on 06/04/2017.
//  Copyright © 2017 Daniel Cohen. All rights reserved.
//

import UIKit
import FirebaseDatabase

struct Book {
    var bookName = ""
    var authorName = ""
    var genre = ""
    var publishYear = ""
    var pagesInBook = ""
    
   // init() {
        
    //}
    
   // init(json: [String: String]) {
        
    //}
}


class BookDetails: UIViewController, UITextViewDelegate {

    var book = Book()
    
    var ref: FIRDatabaseReference?

    override func viewDidLoad() {
        super.viewDidLoad()
        //ref = FIRDatabase.database().reference()
        
       // ref?.child("Posts").setValue("WHATEVEA")
        
      /*
        let json = ["book_name": "Harry Potter",
                    "author": "sdasd"]
        
        let newBook = Book(json: json)
      */
    }
    
   
    
    @IBOutlet weak var bookNameInput: UITextField!
    
    @IBOutlet weak var authorInput: UITextField!
    
    @IBOutlet weak var genreInput: UITextField!
    
    @IBOutlet weak var yearInput: UITextField!
    
    @IBOutlet weak var numberOfPagesInput: UITextField!
    
    func saveBookDetails() {
        
        if bookNameInput.text != ""{
            book.bookName = bookNameInput.text!
        }

        if authorInput.text != ""{
            book.authorName = authorInput.text!
        }
        if genreInput.text != ""{
            book.genre = genreInput.text!
        }
        if yearInput.text != ""{
            book.publishYear = yearInput.text!
        }
        
        if numberOfPagesInput.text != ""{
        book.pagesInBook = numberOfPagesInput.text!
        }
        
        let ref: FIRDatabaseReference!
        ref = FIRDatabase.database().reference()
        
        //ref?.child("Book").childByAutoId().setValue("No")
        
        
        ref.child("bookeep-6c8b9").child("Book").setValue(["Author": "Donna"])

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (book.pagesInBook != ""){

        //Change "back" button on navigation controller
        let backItem = UIBarButtonItem()
        backItem.title = "Edit"
        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
        
        if let nextVC = segue.destination as? BookScreen {
            saveBookDetails()
            nextVC.book = book
        }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            //textView.resignFirstResponder()
            return false
        }
        return true
    }
    
}
