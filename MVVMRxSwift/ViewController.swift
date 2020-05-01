//
//  ViewController.swift
//  MVVMRxSwift
//
//  Created by Leo Moon on 2020-04-30.
//  Copyright © 2020 Leo Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    static func instantiate() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

