//
//  RedViewController.swift
//  working772015
//
//  Created by Charlie on 7/7/15.
//  Copyright (c) 2015 mob3. All rights reserved.
//

import UIKit

class RedViewControllerTest: UIViewController {

    
    @IBOutlet weak var myUIImageView: UIImageView!

    
    //Stepper outlet
    @IBOutlet weak var stepper: UIStepper!
    
    //Stepper label
    @IBOutlet weak var numberLabel: UILabel!
    

    
    //Stepper action
    
    @IBAction func stepperAction(sender: AnyObject) {
        
        
        //Prints label with stepper value
        numberLabel.text = "\(Int(stepper.value))"
        println("\(numberLabel.text!)")
        
        
        //Assigns value of stepper label to Int
        var numberOfTaps = Int(stepper.value)
        println("numerOfTaps - \(numberOfTaps)")
        
        
        
        //Instantiates a Tap Gesture Recognizer
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("myUIImageViewTapped:"))
        tap.numberOfTapsRequired = numberOfTaps
        self.myUIImageView.addGestureRecognizer(tap)
        self.myUIImageView.userInteractionEnabled = true
        
        println("tap.number = \(tap.numberOfTapsRequired)")
     
       
    }
    
    func myUIImageViewTapped(recognizer: UITapGestureRecognizer) {
        
        recognizer.numberOfTapsRequired = 3

        
        if(recognizer.state == UIGestureRecognizerState.Ended){
            println("myUIImageView has been tapped by the user.")
        
            
            self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
            
        }
        
        
    }
 


    
    //Stepper outlet for number of taps

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
      // numberOfTaps = Int(stepperActionForTaps.value)
        
      
       

}
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




   /*
    @IBAction func redTapGesture(sender: AnyObject) {
    
 
        
      self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    
    }
    */
