//
//  Questions.swift
//  Smart Forum
//
//  Created by Mario Hernandez on 3/24/16.
//  Copyright © 2016 Mario Hernandez. All rights reserved.
//

import UIKit
import Alamofire

class Questions : UITableViewController {
    
    var data : [[String: String]] = [[:]]
    
    let url = "http://agile-crag-45223.herokuapp.com/traerPreguntas"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Questions"
        

        
    }
    
    override func viewDidAppear(animated: Bool) {
        Alamofire.request(.GET, self.url).validate()
            .responseJSON { response in
                
                
                print(response.result.value)
                
                self.data = response.result.value as! [[String: String]]
                
                self.tableView.reloadData()
                
        }
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cel = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! Cell
        
        cel.title.text = data[indexPath.row]["question"]
        
        return cel
        
    }
    
    
    @IBAction func goBack(sender: UIBarButtonItem) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "seg") {
            let svc = segue.destinationViewController as! Answer;
            
            svc.ques = data[self.tableView.indexPathForSelectedRow!.row]["question"]!
            
        }
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        
    }
    
    
}
