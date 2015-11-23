//
//  SIMainViewController.swift
//  SignInExample
//
//  Created by Aleksey Mikhailov on 23.11.15.
//  Copyright © 2015 Aleksey Mikhailov. All rights reserved.
//

import UIKit

private let kSignedOutSegue = "signedOut"

class SIMainViewController: UIViewController
{
    @IBOutlet weak var userLabel: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()

        userLabel.text = "login: \(SIUserData.instance.login)\npassword: \(SIUserData.instance.password)"
    }

    @IBAction func signOutPressed(sender: UIButton)
    {
        SIUserData.instance.login = nil
        SIUserData.instance.password = nil
        SIUserData.instance.save()
        
        self.performSegueWithIdentifier(kSignedOutSegue, sender: nil)
    }
}
