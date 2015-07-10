//
//  OrangeViewController.swift
//  working772015
//
//  Created by Charlie on 7/7/15.
//  Copyright (c) 2015 mob3. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBAction func orangeTapGesture(sender: AnyObject) {
        
            self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var orangeLabel: UILabel!
    
    var initalText: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.orangeLabel.text = self.initalText
        
        
        
        // Do any additional setup after loading the view.
    }
   
    
    
  


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
}
