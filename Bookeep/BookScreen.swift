//
//  BookScreen.swift
//  Bookeep
//
//  Created by Daniel Cohen on 06/04/2017.
//  Copyright © 2017 Daniel Cohen. All rights reserved.
//

import UIKit


class BookScreen: UIViewController {

    
    var book: Book!
    
    var currentPage = 0


    override func viewDidLoad() {
        super.viewDidLoad()
     
        currPage.text = "\(Int(pageSlider.value))"
        
        
        percent.text = String(describing: Int(Double(Double((currentPage))/Double(Int(book.pagesInBook)!)*100)))+"%"
        
        
        bookNameLabel.text = book.bookName
        authorLabel.text = book.authorName
        genreLabel.text = book.genre
        publishYear.text = book.publishYear
        pagesInBook.text = "\(book.pagesInBook)"
        currPage.text = "\(currentPage) /"
        
        pageSlider.setThumbImage(UIImage(named: "bookMark.png"), for: UIControlState.normal)
        pageSlider.setThumbImage(UIImage(named: "bookMark.png"), for: UIControlState.highlighted)
        pageSlider.maximumValue = Float(book.pagesInBook)!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var pageSlider: UISlider!
    
    @IBOutlet weak var currPage: UILabel!
    
    @IBOutlet weak var pagesInBook: UILabel!
    
    @IBOutlet weak var bookNameLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!

    @IBOutlet weak var genreLabel: UILabel!
    
    @IBOutlet weak var publishYear: UILabel!
    
    @IBOutlet weak var percent: UILabel!
    
    @IBAction func pageSliderAction(_ sender: Any) {
        
        currPage.text = "\(currentPage) /"
        currentPage = Int(pageSlider.value)
        let pages:Int = Int(book.pagesInBook)!
        
        
        percent.text = String(describing: Int(Double(Double((currentPage))/Double(pages)*100)))+"%"
    }
    
    
  
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        

    }
    
    

    
}
