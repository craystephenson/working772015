//
//  MyGreenViewController.swift
//  working772015
//
//  Created by Charlie on 7/7/15.
//  Copyright (c) 2015 mob3. All rights reserved.
//

import UIKit

class MyGreenViewController: UIViewController {

    @IBAction func longPress(sender: UILongPressGestureRecognizer) {
        
    self.performSegueWithIdentifier("showRedSegue", sender: self)

        
    }
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var textBox: UITextField!
    @IBAction func switchButton(sender: AnyObject) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        if !textBox.text.isEmpty {
            
            // show orange vc
            
            
            let vc = storyboard.instantiateViewControllerWithIdentifier("OrangeVC") as! OrangeViewController
            vc.initalText = self.textBox.text
             //vc.initialText = self.textBox

            self.presentViewController(vc, animated: true, completion: nil)
            
            
            
        }
        
        
        if mySwitch.on {
            
        performSegueWithIdentifier("showRedSegue", sender: self)

        
        }else{

          
            
            let vc = storyboard.instantiateViewControllerWithIdentifier("BlueVC") as! UIViewController
            
       self.presentViewController(vc, animated: true, completion: nil)
        
      
            
            

            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
