//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Lance Hirsch on 5/19/15.
//  Copyright (c) 2015 Lance Hirsch. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var choice: String?
    var compChoice: String?
    
    @IBOutlet weak var result: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        if let choice = self.choice{
            switch choice {
            case "rock":
                if compChoice == "rock" {
                    self.result.image = UIImage(named: "itsATie")
                }
                else if compChoice == "paper" {
                    self.result.image = UIImage(named: "PaperCoversRock")
                }
                else {
                    self.result.image = UIImage(named: "RockCrushesScissors")
                }
            case "paper":
                println("paper")
            case "scissors":
                println("scissors")
            default: println("hai")
            }
            
            self.result.alpha = 0
            
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3){
            self.result.alpha = 1
        }
    }
    
    
    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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
