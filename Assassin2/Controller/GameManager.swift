//
//  GameManager.swift
//  Assassin2
//
//  Created by Matthew Shober on 11/11/18.
//  Copyright © 2018 Cowabunga Games. All rights reserved.
//

import Foundation
import Parse

class GameManager {
    
    func getGamesFromCurrentUser() {
        
        if let user = PFUser.current() {
            if let games = user.object(forKey: "games") as? PFObject {
                games.fetchInBackground(block: { (object, error) in
                    if let error = error {
                        print("*** error fetching - \(error) ***")
                    } else if let object = object {
                        print("*** have profile object - id: \(object) ***")
                    }
                })
            }
        }
    }
    
    func createGameForCurrentUser(attributes: [String: Any]?) {
        let game = PFObject(className:"Game")
        
        attributes?.forEach({ (attribute) in
            game[attribute.key] = attribute.value
        })
        
        game.saveInBackground {
            (success: Bool, error: Error?) in
            if (success) {
                // The object has been saved.
            } else {
                // There was a problem, check error.description
            }
        }
    }
    
    func createGame(attributes: [String: Any]?, result: @escaping PFBooleanResultBlock) {
        let game = PFObject(className:"Game")
        
        attributes?.forEach({ (attribute) in
            game[attribute.key] = attribute.value
        })
        
        game.saveInBackground(block: result)
    }
}
