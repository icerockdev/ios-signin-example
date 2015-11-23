//
//  SISignInViewController.swift
//  SignInExample
//
//  Created by Aleksey Mikhailov on 23.11.15.
//  Copyright © 2015 Aleksey Mikhailov. All rights reserved.
//

import UIKit

private let kSignedInSegue = "signedIn"

class SISignInViewController: UIViewController
{
    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
    }

    @IBAction func signInPressed(sender: UIButton)
    {
        SIUserData.instance.login = loginText.text
        SIUserData.instance.password = passwordText.text
        SIUserData.instance.save()
        
        self.performSegueWithIdentifier(kSignedInSegue, sender: nil)
    }
}
