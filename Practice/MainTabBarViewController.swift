//
//  MainTabBarViewController.swift
//  Practice
//
//  Created by Tomokatsu Iguchi on 2018/05/29.
//  Copyright © 2018年 Tomokatsu Iguchi. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialBottomNavigation

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let first = ViewController()
        let second = SecondViewController()

        first.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.featured, tag: 1)
        second.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.featured, tag: 2)

        let myTabs = [first, second]

        self.setViewControllers(myTabs, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
