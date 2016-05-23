//
//  ViewController.swift
//  Smart Forum
//
//  Created by Mario Hernandez on 3/23/16.
//  Copyright © 2016 Mario Hernandez. All rights reserved.
//

import UIKit
import WatsonDeveloperCloud
import Alamofire

class ViewController: UIViewController {
    @IBOutlet weak var lbQuestion: UILabel!
    
    @IBOutlet weak var lbAnswer: UITextView!
    
    @IBOutlet weak var btnMic: UIButton!
    
    @IBOutlet weak var imgAnimated: UIImageView!
    
    @IBOutlet weak var btnAnswer: UIButton!
    
    @IBOutlet weak var btnBad: UIButton!
    
    @IBOutlet weak var btnGood: UIButton!
    
    
    let URL1 = "http://agile-crag-45223.herokuapp.com/ask"
    
    let URL2 = "http://agile-crag-45223.herokuapp.com/askDirectly"
    
    var urlAsk = "http://agile-crag-45223.herokuapp.com/ask"
    
    
    
    
    var speechToText : SpeechToText = SpeechToText(username: "808e7a9a-901a-47b1-b640-6c09b0282557", password: "hMNBSlD6N2LD")
    
    var stopStreamingDefault: (Void -> Void)? = nil
    
    var json : [String: String] = ["answer":"none"]
    
    

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
    
    @IBAction func speak(sender: AnyObject) {
        
        self.btnMic.enabled = false
        
        
        UIView.animateWithDuration(0.5, animations: {
            self.imgAnimated.alpha = 1
            
            
            }, completion: {(finished:Bool) in
                
            })
        
         stopStreamingDefault?()

    }
    
    func askWatson(){
        
        UIView.animateWithDuration(0.5, animations: {
            self.lbQuestion.alpha = 1
            
            
            }, completion: {(finished:Bool) in
                print("Acabe animacion question")
                
                let parameters = [
                    "question": self.lbQuestion.text!
                ]
                
                Alamofire.request(.POST, self.urlAsk, parameters: parameters, encoding: .JSON).validate()
                    .responseJSON { response in
                        
                        
                        
                        print(response.result.value)
                        
                        self.json = response.result.value as! [String: String]
                        
                        self.lbAnswer.text = self.json["answer"]
                        
                        UIView.animateWithDuration(0.5, animations: {
                            
                            self.imgAnimated.alpha = 0
                            self.lbAnswer.alpha = 1
                            
                            self.btnBad.alpha = 1
                            self.btnGood.alpha = 1
                            
                            
                            
                            
                            }, completion: {(finished:Bool) in
                                print("Acabe animacion answer")
                                
                                self.btnGood.enabled = true;
                                self.btnBad.enabled = true;
                                
                                self.btnMic.enabled = true
                        })
                }
        })
        
    }
    
    
    @IBAction func speak2(sender: UIButton) {
        
        self.lbAnswer.alpha = 0
        self.lbQuestion.alpha = 0
        
        self.btnBad.alpha = 0
        self.btnGood.alpha = 0
        
        self.btnBad.enabled = false
        self.btnGood.enabled = false

        
        var settings = SpeechToTextSettings(contentType: .L16(rate: 44100, channels: 1))
        settings.continuous = true
        settings.interimResults = false
        
        let failure = { (error: NSError) in print(error) }
        stopStreamingDefault = speechToText.transcribe(settings, failure: failure) { results in
            if let transcription = results.last?.alternatives.last?.transcript {
                print(transcription)
                self.lbQuestion.text = transcription
                
                self.askWatson()
            }
        }
        
    }
    
    
    @IBAction func bad(sender: UIButton) {
        
        UIView.animateWithDuration(0.5, animations: {
            self.btnBad.enabled = false
            self.btnGood.enabled = false
            
            self.btnBad.alpha = 0
            self.btnGood.alpha = 0
            
            
            }, completion: {(finished:Bool) in
                
                
                let parameters = [
                    "question": self.lbQuestion.text! ,
                    "type" : "bad"
                ]
                
                
                Alamofire.request(.POST, "http://agile-crag-45223.herokuapp.com/feedback", parameters: parameters, encoding: .JSON).validate()
                    .responseString { response in
                        print(response)
                        self.lbAnswer.text = "Thanks for your feedback, your question is now submitted on Smart Forum"
                }
                
                
                //por ahora
                //self.lbAnswer.text = "Thanks for your feedback, your question is now submitted on Smart Forum"

        })
        
    }
    
    @IBAction func good(sender: UIButton) {
        
        UIView.animateWithDuration(0.5, animations: {
            self.btnBad.enabled = false
            self.btnGood.enabled = false
            
            self.btnBad.alpha = 0
            self.btnGood.alpha = 0
            
            
            }, completion: {(finished:Bool) in
                
                
                let parameters = [
                    "question": self.lbQuestion.text! ,
                    "type" : "good",
                    "cannonical": self.json["cannonical"]!
                ]
                
                
                Alamofire.request(.POST, "http://agile-crag-45223.herokuapp.com/feedback", parameters: parameters, encoding: .JSON).validate()
                    .responseString { response in
                        //self.lbAnswer.text = "Thanks for your feedback, your question is now submitted on Smart Forum"
                        
                        print(response)
                }
                
                
        })
        
    }
    
    
    @IBAction func showInfo(sender: UIButton) {
        
        if(urlAsk == URL1){
            urlAsk = URL2
        }else{
            urlAsk = URL1
        }
        
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

