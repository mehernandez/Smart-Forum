//
//  Questions.swift
//  Smart Forum
//
//  Created by Mario Hernandez on 3/24/16.
//  Copyright © 2016 Mario Hernandez. All rights reserved.
//

import UIKit

class Questions : UITableViewController {
    
    var data = ["¿How can I install the IBM's VPN in my MAC?","¿How can I connect my own machine to the IBM wireless network?","¿What is a PMR?","¿How can I implement a cluster on IBM's Websphere?","¿Which frameworks are integrated in the IBM's Big Insights platform?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Questions"
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cel = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! Cell
        
        cel.title.text = data[indexPath.row]
        
        return cel
        
    }
    
}
