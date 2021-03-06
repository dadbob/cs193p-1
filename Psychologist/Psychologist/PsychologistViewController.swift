//
//  ViewController.swift
//  Psychologist
//
//  Created by Vojta Molda on 2/24/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class PsychologistsViewController: UIViewController {

    @IBAction func nothing(sender: UIButton) {
        performSegueWithIdentifier("Show Nothing", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destinationController = segue.destinationViewController
        if let navigationController = destinationController as? UINavigationController {
            destinationController = navigationController.visibleViewController!
        }
        if let hvc = destinationController as? HapinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                case "Show Sad": hvc.happiness = 0;
                case "Show Happy": hvc.happiness = 100;
                case "Show Nothing": hvc.happiness = 25;
                default: hvc.happiness = 50;
                }
            }
        }
    }


}

