//
//  ViewController.swift
//  MVVMRxSwift
//
//  Created by Leo Moon on 2020-04-30.
//  Copyright © 2020 Leo Moon. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    let disposeBag = DisposeBag()
    
    static func instantiate() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let service = RestaurantService()
        service.fetchRestaurants().subscribe(onNext: { (restaurants) in
            print(restaurants)
            }).disposed(by: disposeBag)
    }
}

