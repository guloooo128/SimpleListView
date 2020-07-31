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
        
        let blankView = UIView()
        blankView.backgroundColor = UIColor.systemPink
        Config.shared.blankView = blankView
        
        let noConnectionView = UIView()
        noConnectionView.backgroundColor = UIColor.systemTeal
        Config.shared.noConnectionView = noConnectionView
        
        return true
    }

}

