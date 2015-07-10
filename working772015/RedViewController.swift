//
//  RedViewController.swift
//  working772015
//
//  Created by Charlie on 7/7/15.
//  Copyright (c) 2015 mob3. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
  
    var tap: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Instantiates a Tap Gesture Recognizer
        self.tap = UITapGestureRecognizer(target: self, action: Selector("myUIImageViewTapped:"))
        self.myUIImageView.addGestureRecognizer(tap)}

    
    @IBOutlet weak var myUIImageView: UIImageView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func stepperAction(sender: UIStepper) {

        numberLabel.text = "\(Int(stepper.value))"
        println("\(numberLabel.text!)")
        
        var numberOfTaps = Int(stepper.value)
        println("numerOfTaps - \(numberOfTaps)")
        
        tap.numberOfTapsRequired = Int(stepper.value)
        self.myUIImageView.userInteractionEnabled = true
        
        println("tap.number = \(tap.numberOfTapsRequired)")

    }
    
    func myUIImageViewTapped(test: UITapGestureRecognizer) {
 
       if(test.state == UIGestureRecognizerState.Ended){
            println("myUIImageView has been tapped by the user.")
            self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    }