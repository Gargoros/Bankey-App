//
//  AppDelegate.swift
//  BankeyApp
//
//  Created by MIKHAIL ZHACHKO on 7.02.26.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    let loginView = LoginViewController()
    let onboardingView = OnboardingContainerViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        loginView.delegate = self
        onboardingView.delegate = self
        
//        window?.rootViewController = loginView
        window?.rootViewController = onboardingView
        
        return true
    }
}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        print("for - Did Login")
    }
}

extension AppDelegate: OnboardingContainerViewControllerDelegate {
    func didFinishOnboarding() {
        print("for - Did onboarding")
    }
}

