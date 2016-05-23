//
//  Answer.swift
//  Smart Forum
//
//  Created by Mario Hernandez on 3/24/16.
//  Copyright © 2016 Mario Hernandez. All rights reserved.
//

import UIKit
import Alamofire

class Answer : UIViewController {
    
    @IBOutlet weak var imgWatson: UIImageView!
    
    @IBOutlet weak var btnSend: UIButton!
    
    @IBOutlet weak var textArea: UITextView!
    
    @IBOutlet weak var lbQuestion: UILabel!
    
    var ques = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textArea.layer.cornerRadius = 8.0
        textArea.clipsToBounds = true
        
        lbQuestion.layer.cornerRadius = 8.0
        lbQuestion.clipsToBounds = true
        
        self.title = "Answer"
        
        lbQuestion.text = ques
    }
    
    
    @IBAction func send(sender: AnyObject) {
        textArea.hidden = true
        
        btnSend.hidden = true
        
        let parameters = [
            "question": self.lbQuestion.text! ,
            "answer" : self.textArea.text!
        ]
        
        
        Alamofire.request(.POST, "http://agile-crag-45223.herokuapp.com/resolverPregunta", parameters: parameters, encoding: .JSON).validate()
            .responseString { response in
                print(response)
                
                UIView.animateWithDuration(2, animations: {
                    
                    self.imgWatson.alpha = 1
                    
                    
                    }, completion: {(finished:Bool) in
                        
                        
                    }
                )
        }

        

        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.textArea.endEditing(true)
    }
    
    
    
}
