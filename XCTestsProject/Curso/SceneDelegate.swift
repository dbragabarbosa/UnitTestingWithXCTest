//
//  SceneDelegate.swift
//  Curso
//
//  Created by Bruno Faganello Neto on 13/06/20.
//  Copyright © 2020 Bruno Faganello. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        
        let accountViewController = AccountViewController(nibName: "AccountViewController", bundle: nil)
        accountViewController.viewModel = AccountViewModel(
            shouldUseLocation: true,
            model: AccountModel(instruction: "1")
        )
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = scene
        window?.rootViewController = accountViewController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}
