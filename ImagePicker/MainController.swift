//
//  MainController.swift
//  ImagePicker
//
//  Created by SwagSoft Vn on 12/28/15.
//  Copyright © 2015 SwagSoft Vn. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func experiment(sender:UIButton!){
        let controller = UIAlertController()
        controller.title = "Test alert"
        controller.message = "This is a test"
        
        // Dismiss the view controller after the user taps “ok”
        let okAction = UIAlertAction (title:"Hit me!!", style: UIAlertActionStyle.Default) {
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        controller.addAction(okAction)
        self.presentViewController(controller, animated: true, completion:nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //let RockController = segue.destinationViewController as! RockController
        print("prepare:: \(segue.identifier)")
        
        if segue.identifier == "rock"{
            print("prepare to show rock...")
        }
        
        if segue.identifier == "paper"{
            print("prepare to show paper...")
        }
        if segue.identifier == "scissors"{
            print("prepare to show scissors...")
        }
        
    }
    
    @IBAction func PlayAction(sender:UIButton!){
        let random:Int = Int(arc4random_uniform(3) + 1)
        
        if(random == 1) {
            performSegueWithIdentifier("rock", sender: self)
        }
        
        if(random == 2){
            performSegueWithIdentifier("paper", sender: self)
        }
        
        if(random == 3){
            performSegueWithIdentifier("scissors", sender: self)
        }
        
    }


}

