//
//  AppDelegate.swift
//  SurfMVPExample
//
//  Created by Malygin Georgii on 11.03.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initializeRootView()
        return true
    }

}

private extension AppDelegate {

    func initializeRootView() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let controller = MainModuleConfigurator().configure()
        let navi = UINavigationController(rootViewController: controller)
        window?.rootViewController = navi
        window?.makeKeyAndVisible()
    }
}

