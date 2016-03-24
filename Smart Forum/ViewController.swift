//
//  ViewController.swift
//  Smart Forum
//
//  Created by Mario Hernandez on 3/23/16.
//  Copyright © 2016 Mario Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbQuestion: UILabel!
    
    @IBOutlet weak var lbAnswer: UILabel!
    
    @IBOutlet weak var btnMic: UIButton!
    
    @IBOutlet weak var imgAnimated: UIImageView!
    
    @IBOutlet weak var btnAnswer: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbAnswer.layer.cornerRadius = 8.0
        lbAnswer.clipsToBounds = true
        
        lbQuestion.layer.cornerRadius = 8.0
        lbQuestion.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func talk(sender: AnyObject) {
        
        
        lbAnswer.alpha = 0
        
        lbQuestion.alpha = 0
        
        btnMic.enabled = false
        
        
        UIView.animateWithDuration(5, animations: {
            
            print("hola")
            
            sleep(2)
            
            
            }, completion: {(finished:Bool) in

        UIView.animateWithDuration(0.5, animations: {
            self.lbQuestion.alpha = 1
            
            
            }, completion: {(finished:Bool) in
                
                UIView.animateWithDuration(1.5, animations: {
                    
                    self.imgAnimated.alpha = 1
                    
                }, completion: {(finished:Bool) in
                    
                    UIView.animateWithDuration(1.5, animations: {
                        
                        self.imgAnimated.alpha = 0
                        
                    }, completion: {(finished:Bool) in
                        
                        UIView.animateWithDuration(0.5, animations: {
                            
                            self.lbAnswer.alpha = 1
                            
                        }, completion: {(finished:Bool) in
                            
                            UIView.animateWithDuration(0.5, animations: {
                                
                                self.btnMic.enabled = true
                                
                            }, completion: {(finished:Bool) in
                                
                             //
                                
                            })
                            
                        })
                        
                    })
                })
        })
                
        })
        
        
       
        
        
        
        
        
        
        

        
        
        
        
    }

}

