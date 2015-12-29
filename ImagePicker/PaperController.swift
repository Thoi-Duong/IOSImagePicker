//
//  PaperController.swift
//  ImagePicker
//
//  Created by SwagSoft Vn on 12/28/15.
//  Copyright © 2015 SwagSoft Vn. All rights reserved.
//

import Foundation
import UIKit
class PaperController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BackAction(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func experiment(){
        let controller = UIAlertController()
        controller.title = "Test alert"
        controller.message = "This is a test"
        
        // Dismiss the view controller after the user taps “ok”
        let okAction = UIAlertAction (title:"Hit me!!", style: UIAlertActionStyle.Default) {
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        controller.addAction(okAction)
        self.presentViewController(controller, animated: true, completion:nil)    }
    
}