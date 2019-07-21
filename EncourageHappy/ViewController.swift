//
//  ViewController.swift
//  EncourageHappy
//
//  Created by Nguyễn Lực on 7/20/19.
//  Copyright © 2019 Nguyễn Lực. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    @IBOutlet weak var lblQuote: UILabel!
    @IBOutlet weak var imgViewBG: UIImageView!
    @IBOutlet weak var lblAuthor: UILabel!

    var quoteType : Int = Int(arc4random_uniform(3))
    var selectedIndex : Int = 0
    
    
    
    
    func generate(upper : Int) -> Int {
        let i : Int = Int(arc4random_uniform(UInt32(upper)))
        return i
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.body = "bla bla bla bla"
        content.sound = UNNotificationSound.default()
        
        let laplai = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let yeucau = UNNotificationRequest(identifier: "testrequire", content: content, trigger: laplai)
        
        UNUserNotificationCenter.current().add(yeucau, withCompletionHandler: nil)
        showQuote()
        
        _ = Timer.scheduledTimer(withTimeInterval: 5, repeats: true, block: { timer in
            self.showQuote()
        })
        
    }
    
    func showQuote() {
        selectedIndex = generate(upper: DataQuotes.countQuote(type: quoteType))
        let dataQuote = DataQuotes.getQuotes(type: quoteType
            , index: selectedIndex )
        let dataAuthor = DataQuotes.getAuthors(index: selectedIndex)
        lblQuote.text = dataQuote
        lblAuthor.text = dataAuthor
        imgViewBG.image = UIImage(named: "bg\(selectedIndex).jpg")
    }
}

