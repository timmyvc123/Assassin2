//
//  ViewController.swift
//  Assassin2
//
//  Created by Timmy Van Cauwenberge on 10/30/18.
//  Copyright © 2018 Cowabunga Games. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let testObject = PFObject(className: "Testing")
        testObject["foo"] = "bar"
        testObject.saveInBackground { (success, error) in
            print("object has been saved")
        }
    }
    
    @IBAction func logInTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "toLoginSegue", sender: self)

    }
    
    @IBAction func registerTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "toRegisterSegue", sender: self)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
