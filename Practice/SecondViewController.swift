//
//  SecondViewController.swift
//  Practice
//
//  Created by Tomokatsu Iguchi on 2018/05/27.
//  Copyright © 2018年 Tomokatsu Iguchi. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialFlexibleHeader

class SecondViewController: UIViewController, UIScrollViewDelegate {
    let headerViewController = MDCFlexibleHeaderViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        headerViewController.view.frame = view.bounds
        view.addSubview(headerViewController.view)
        headerViewController.didMove(toParentViewController: self)
        
        let scrollView = UIScrollView()
        headerViewController.headerView.trackingScrollView = scrollView
        scrollView.delegate = headerViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        addChildViewController(headerViewController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addChildViewController(headerViewController)
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
