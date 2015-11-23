//
//  ChangeRootControllerSegue.swift
//  SignInExample
//
//  Created by Aleksey Mikhailov on 23.11.15.
//  Copyright © 2015 Aleksey Mikhailov. All rights reserved.
//

import UIKit

@objc(ChangeRootControllerSegue)
class ChangeRootControllerSegue: UIStoryboardSegue
{
    override func perform()
    {
        if let window = self.sourceViewController.view.window {
            window.rootViewController = self.destinationViewController;
        }
    }
}
