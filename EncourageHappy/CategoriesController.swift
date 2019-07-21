//
//  CategoriesController.swift
//  EncourageHappy
//
//  Created by  Lực Nguyễn on 7/21/19.
//  Copyright © 2019 Nguyễn Lực. All rights reserved.
//

import UIKit

class CategoriesController : UIViewController{
    var type : Int = -1
    
    @IBAction func btnAction(_ sender: UIButton) {
        type = sender.tag
        performSegue(withIdentifier: "SegueBackToQuote", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SegueBackToQuote" {
            let destinationViewController = segue.destination as! ViewController
            destinationViewController.quoteType = type
        }
    }
}
