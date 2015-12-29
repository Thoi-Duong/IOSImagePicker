//
//  scissorsController.swift
//  ImagePicker
//
//  Created by SwagSoft Vn on 12/29/15.
//  Copyright © 2015 SwagSoft Vn. All rights reserved.
//

import Foundation
import UIKit
class scissorsController: UIViewController{
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

}