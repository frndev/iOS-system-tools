//
//  AppDelegate.swift
//  SystemSounds-iOS
//
//  Created by Francisco Navarro on 23/01/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let tabbarController = UITabBarController()
        let sounds = UINavigationController(rootViewController: SoundsVC())
        sounds.tabBarItem = .init(title: Strings.soundsTitle, image: nil, tag: .zero)
        let fonts = UINavigationController(rootViewController: FontsVC())
        fonts.tabBarItem = .init(title: Strings.fontsTitle, image: nil, tag: 1)
        tabbarController.viewControllers = [sounds, fonts]
        window?.rootViewController = tabbarController
        return true
    }

}

