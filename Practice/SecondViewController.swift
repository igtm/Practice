//
//  SecondViewController.swift
//  Practice
//
//  Created by Tomokatsu Iguchi on 2018/05/27.
//  Copyright © 2018年 Tomokatsu Iguchi. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialButtons
import SnapKit

class SecondViewController: UIViewController {

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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func buttonTapped(sender: AnyObject) {
        print("pressed!")
        self.fab.setTitle("Pressed!", for: UIControlState.normal)
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }

    @objc func rightNavButtonTapped(sender: AnyObject) {
        print("pressed!")
        self.navigationController?.pushViewController(ViewController(), animated: true)
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


// #selectorをtypeプロパティとして持つ
// @see: https://qiita.com/hachinobu/items/a0e06e87728c96969a1f

private extension Selector {
    // .buttonTapped
    static let buttonTapped = #selector(SecondViewController.buttonTapped(sender:))
    static let rightNavButtonTapped = #selector(SecondViewController.rightNavButtonTapped(sender:))
}