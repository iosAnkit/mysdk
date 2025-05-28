//
//  ViewController.swift
//  MySDKTestApp
//
//  Created by NewPut on 28/05/25.
//

import UIKit
import MySDKCore
import MySDKAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Logger.log("Testing SDK from Core")
        AuthManager.login()

    }


}

