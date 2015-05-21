//
//  ViewController.swift
//  Roshambo
//
//  Created by Lance Hirsch on 5/19/15.
//  Copyright (c) 2015 Lance Hirsch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
        Chose a random hand sign
    */
    func halsChoice() -> String {
        let randomValue = 1 + arc4random() % 3
        var hand = ""
        
        switch Int(randomValue) {
        case 1:
            hand = "rock"
        case 2:
            hand = "paper"
        case 3:
            hand = "scissors"
        default: ()
        }
        return hand
    }
    
    // Programatic segue
    @IBAction func rock(sender: AnyObject) {
        
        // Get the ResultViewController
        var controller:ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        controller.compChoice = halsChoice()
        controller.choice = "rock"
        
        // Present the view Controller
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    // Prepare for paper and scissor segues
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! ResultViewController
        
        controller.compChoice = self.halsChoice()
        
        if segue.identifier == "paper" {
            controller.choice = "paper"
        } else if segue.identifier == "scissors" {
            controller.choice = "scissors"
        }
    }
    
    // Code for paper segue
    @IBAction func paper(sender: AnyObject) {
        self.performSegueWithIdentifier("paper", sender: self)
        
    }
    
}

