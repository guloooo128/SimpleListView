//
//  AppDelegate.swift
//  SimpleListView-Example
//
//  Created by Gollum on 2020/7/30.
//  Copyright © 2020 Gollum. All rights reserved.
//

import UIKit
import SimpleListView

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
 
//        Config.shared.blankView = BlankView.fromXib()
        
        Config.shared.blankView = BlankView.fromXib()
        
        Config.shared.noConnectionView = NoConnectionView.fromXib()
        
        return true
    }
    
}

