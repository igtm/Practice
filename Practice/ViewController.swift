//
//  ViewController.swift
//  Practice
//
//  Created by Tomokatsu Iguchi on 2018/05/25.
//  Copyright © 2018年 Tomokatsu Iguchi. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialButtons
import SnapKit

class ViewController: UIViewController {

    // Elements
    let fab: MDCButton = {
        let btn = MDCFloatingButton()
        btn.backgroundColor = UIColor.red
        btn.setTitle("YEAH!", for: UIControlState.normal)
        btn.setTitleColor(UIColor.black,  for: UIControlState.normal)
        btn.addTarget(self,
                      action: .buttonTapped,
                      for: .touchUpInside)
        return btn
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textAlignment = .center
        label.sizeToFit()
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fab.setElevation(ShadowElevation(12.0), for: .highlighted)
        view.addSubview(fab)
        view.addSubview(label)
        
        // AutoLayout
        // @see: https://tech.ryukyu-i.co.jp/2016/12/02/easy-to-use-snapkit/
        fab.snp
            .makeConstraints { (make) -> Void in
            make.width.height.equalTo(50)
            make.center.equalTo(self.view)
        }
        label.snp.makeConstraints{ make -> Void in
            make.width.height.equalTo(20)
            make.top.equalTo(fab.snp.top).offset(-50)
            // make.centerX.equalTo(self.view)
            make.centerX.equalToSuperview()
        }
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: .rightNavButtonTapped)
        
        print("YEAR!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonTapped(sender: AnyObject) {
        print("pressed!")
        self.fab.setTitle("Pressed!", for: UIControlState.normal)
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }

    @objc func rightNavButtonTapped(sender: AnyObject) {
        print("pressed!")
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }

}

// #selectorをtypeプロパティとして持つ
// @see: https://qiita.com/hachinobu/items/a0e06e87728c96969a1f

private extension Selector {
    // .buttonTapped
    static let buttonTapped = #selector(ViewController.buttonTapped(sender:))
    static let rightNavButtonTapped = #selector(ViewController.rightNavButtonTapped(sender:))
}
