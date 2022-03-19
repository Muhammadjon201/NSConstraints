//
//  AppDelegate.swift
//  nsConst
//
//  Created by Muhammadjon Mamarasulov on 3/19/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

        var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        
        let vc = HomeViewController()
        //let nc = UINavigationController(rootViewController: vc)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }



}

