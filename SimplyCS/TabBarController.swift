//
//  TabBarController.swift
//  SimplyCS
//
//  Created by Jeremiah Leary on 7/9/21.
//

import Foundation
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate{
    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!
    var thirdItemImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupViewControllers()
        setupTabBarIcons()
    }
    func setupTabBarIcons(){

        let firstItemView = self.tabBar.subviews[0]
        let secondItemView = self.tabBar.subviews[1]
        let thirdItemView = self.tabBar.subviews[2]

        self.firstItemImageView = (firstItemView.subviews.first as! UIImageView)
        self.firstItemImageView.contentMode = .center

        self.secondItemImageView = (secondItemView.subviews.first as! UIImageView)
        self.secondItemImageView.contentMode = .center
        
        self.thirdItemImageView = (thirdItemView.subviews.first as! UIImageView)
        self.thirdItemImageView.contentMode = .center
    }
    func setupViewControllers(){

        let HomePageVC = HomePageViewController()
        let navController1 = UINavigationController(rootViewController:HomePageVC)
        HomePageVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "tab-home"), tag: 0)

        let DataStructureVC = DataStructureViewController()
        let navController2 = UINavigationController(rootViewController:DataStructureVC)
        DataStructureVC.tabBarItem = UITabBarItem(title: "Data Structs", image: UIImage(named: "tab-history"), tag: 1)
        
        let AlgorithmVC = AlgorithmViewController()
        let navController3 = UINavigationController(rootViewController:AlgorithmVC)
        AlgorithmVC.tabBarItem = UITabBarItem(title: "Algorithms", image: UIImage(named: "tab-history"), tag: 2)
        

        viewControllers = [navController1, navController2, navController3]

    }
}
