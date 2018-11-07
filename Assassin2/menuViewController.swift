//
//  menuViewController.swift
//  Assassin2
//
//  Created by Timmy Van Cauwenberge on 10/30/18.
//  Copyright © 2018 Cowabunga Games. All rights reserved.
//

import UIKit

class menuViewController: UIViewController {

    @IBOutlet weak var currentGameBUtton: UIButton!
    @IBOutlet weak var joinGameButton: UIButton!
    @IBOutlet weak var createGameButton: UIButton!
    @IBOutlet weak var logOutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func currentGameTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "menuToCurrentGameSegue", sender: self)

    }
    @IBAction func joinGameTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "menuToJoinGameSegue", sender: self)

    }
    @IBAction func createGameTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "menuToCreateGameSegue", sender: self)

    }
    @IBAction func logOutTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "logoutSegue", sender: self)

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
