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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        if let choice = self.choice{
            switch choice {
            case "rock":
                println("rock")
            case "paper":
                println("paper")
            default: println("hai")
            }
            
        }
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
