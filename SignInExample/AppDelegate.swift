//
//  AppDelegate.swift
//  SignInExample
//
//  Created by Aleksey Mikhailov on 23.11.15.
//  Copyright © 2015 Aleksey Mikhailov. All rights reserved.
//

import UIKit

private let kSignInControllerId = "signInController"
private let kMainControllerId = "mainController"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        if(!SIUserData.instance.isSignedIn()) {
            self.window?.rootViewController = self.storyboard().instantiateViewControllerWithIdentifier(kSignInControllerId)
        }
        
        return true
    }
    
    func storyboard() -> UIStoryboard
    {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}

