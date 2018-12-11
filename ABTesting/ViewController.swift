//
//  ViewController.swift
//  ABTesting
//
//  Created by giiiita on 2018/12/10.
//  Copyright © 2018年 giiiita. All rights reserved.
//

import UIKit
import FirebaseRemoteConfig
class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        let isTestUser: Bool = FirebaseRemoteConfigBoolParameterStore().value(forKey: .registerButtonTest)
        if isTestUser {
            self.button.backgroundColor = UIColor.red
        }
    }
}

