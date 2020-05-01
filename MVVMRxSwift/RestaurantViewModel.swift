//
//  RestaurantViewModel.swift
//  MVVMRxSwift
//
//  Created by Leo Moon on 2020-05-01.
//  Copyright © 2020 Leo Moon. All rights reserved.
//

import Foundation

struct RestaurantViewModel {
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
