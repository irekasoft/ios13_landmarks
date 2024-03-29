//
//  SceneDelegate.swift
//  Landmarks
//
//  Created by Hijazi on 4/6/19.
//  Copyright © 2019 iReka Soft. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
    // Use a UIHostingController as window root view controller
    let window = UIWindow(frame: UIScreen.main.bounds)
    
    window.rootViewController = UIHostingController(rootView: LandmarkList())
    
//    let navCon = UINavigationController.init()
//    navCon.addChild(UIHostingController(rootView: LandmarkList()))
//
//    let secondNavCon = UINavigationController.init(rootViewController: UIHostingController(rootView: SecondScene()))
//
//    let tabCon = UITabBarController.init()
//    tabCon.viewControllers = [UIHostingController(rootView: LandmarkList()), secondNavCon]
//
//    window.rootViewController = tabCon
    
    
    
    self.window = window
    window.makeKeyAndVisible()
    
  }
  
  func sceneDidDisconnect(_ scene: UIScene) {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
  }
  
  func sceneDidBecomeActive(_ scene: UIScene) {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
  }
  
  func sceneWillResignActive(_ scene: UIScene) {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
  }
  
  func sceneWillEnterForeground(_ scene: UIScene) {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
  }
  
  func sceneDidEnterBackground(_ scene: UIScene) {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
  }
  
  
}

