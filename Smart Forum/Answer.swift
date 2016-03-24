//
//  Answer.swift
//  Smart Forum
//
//  Created by Mario Hernandez on 3/24/16.
//  Copyright © 2016 Mario Hernandez. All rights reserved.
//

import UIKit

class Answer : UIViewController {
    
    @IBOutlet weak var imgWatson: UIImageView!
    
    @IBOutlet weak var btnSend: UIButton!
    
    @IBOutlet weak var textArea: UITextView!
    
    @IBOutlet weak var lbQuestion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textArea.layer.cornerRadius = 8.0
        textArea.clipsToBounds = true
        
        lbQuestion.layer.cornerRadius = 8.0
        lbQuestion.clipsToBounds = true
        
        self.title = "Answer"
    }
    
    
    @IBAction func send(sender: AnyObject) {
        textArea.hidden = true
        
        btnSend.hidden = true
        
        UIView.animateWithDuration(2, animations: {
            
            self.imgWatson.alpha = 1
            
        
        
            
        })
        
    }
    
}
