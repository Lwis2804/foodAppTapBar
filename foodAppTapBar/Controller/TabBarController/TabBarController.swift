//
//  TabBarController.swift
//  foodAppTapBar
//
//  Created by LUIS GONZALEZ on 06/07/23.
//

import UIKit

class TabBarControllerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.viewControllers = [
           
            self.createNavCont(for: OptionMenuViewController(), title: "First Tap Bar", image: UIImage(systemName: "house") ?? UIImage()),
            self.createNavCont(for: SearchResultViewController(), title: "Second Tap Bar", image: UIImage(systemName: "house") ?? UIImage()),
            self.createNavCont(for: SearchResultViewController(), title: "Second Tap Bar", image: UIImage(systemName: "house") ?? UIImage())
            
        ]
        
    }
    func createNavCont(for mainViewController: UIViewController, title: String, image: UIImage ) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: mainViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        mainViewController.navigationItem.title = title
        mainViewController.navigationItem.backButtonTitle = "Atras"
        
        return navController
    }

 

}



