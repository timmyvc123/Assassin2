//
//  registerViewController.swift
//  Assassin2
//
//  Created by Timmy Van Cauwenberge on 10/30/18.
//  Copyright © 2018 Cowabunga Games. All rights reserved.
//

import UIKit
import Parse
class registerViewController: UIViewController {

    @IBOutlet weak var toLogInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func registerTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "registerToMenuSegue", sender: self)
        let user = PFUser()
        
        guard usernameTextField.text != nil, passwordTextField.text != nil,
            phoneNumberTextField.text != nil, emailTextField.text != nil else {
                // Present user with error message
                return
        }
        
        
        
        user.password = passwordTextField.text
        user.username = usernameTextField.text
        
        user.signUpInBackground { (success, error) in
            if error != nil {

            } else {

            }
        }
    }
    @IBAction func toLogInTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "registerToLoginSegue", sender: self)

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
