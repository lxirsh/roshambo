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
    
    
    @IBAction func rock(sender: AnyObject) {
        
        // Get the ResultViewController
        var controller:ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        controller.choice = "rock"
        
        // Present the view Controller
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! ResultViewController
        
        controller.choice = "paper"
    }
    
    @IBAction func paper(sender: AnyObject) {
        self.performSegueWithIdentifier("paper", sender: self)
        
    }
    
}

