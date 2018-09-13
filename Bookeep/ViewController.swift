//
//  ViewController.swift
//  Bookeep
//
//  Created by Daniel Cohen on 06/04/2017.
//  Copyright © 2017 Daniel Cohen. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDelegate {

    var books = ["Alice in wonderland", "Harry Potter", "Lord of the rings"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
        return books.count
    }
*/
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination
    }
 
    
}


