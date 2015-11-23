//
//  SIUserData.swift
//  SignInExample
//
//  Created by Aleksey Mikhailov on 23.11.15.
//  Copyright © 2015 Aleksey Mikhailov. All rights reserved.
//

import UIKit

private let kLoginKey = "login";
private let kPasswordKey = "password";

class SIUserData: NSObject
{
    static let instance = SIUserData()
    
    var login: String?
    var password: String?
    
    override init()
    {
        let defaults = NSUserDefaults.standardUserDefaults()
        
        login = defaults.stringForKey(kLoginKey)
        password = defaults.stringForKey(kPasswordKey)
    }
    
    func isSignedIn() -> Bool
    {
        if let _ = login, _ = password {
            return true
        }
        else {
            return false
        }
    }
    
    func save()
    {
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setValue(login, forKey: kLoginKey)
        defaults.setValue(password, forKey: kPasswordKey)
        
        defaults.synchronize()
    }
}
