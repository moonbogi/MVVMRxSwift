//
//  RestaurantsListViewModel.swift
//  MVVMRxSwift
//
//  Created by Leo Moon on 2020-05-01.
//  Copyright © 2020 Leo Moon. All rights reserved.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    // when you comes to unit testing a viewModel,
    // we want to be able to abstract a way to fetchRestaurants method.
    // so we can return some fake data. Then we don't have to test fetchRestaurants along with ViewModel
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        
        restaurantService.fetchRestaurants().map { $0.map {
            RestaurantViewModel(restaurant: $0) }
        }
    }
}
