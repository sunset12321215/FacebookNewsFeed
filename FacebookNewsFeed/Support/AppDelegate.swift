//
//  AppDelegate.swift
//  FacebookNewsFeed
//
//  Created by mac on 12/21/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import SnapKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = CustomTabBarController()
        UINavigationBar.appearance().backgroundColor = Theme.sharedInstance.barTintColor
        application.statusBarStyle = .lightContent
        return true
    }
}

