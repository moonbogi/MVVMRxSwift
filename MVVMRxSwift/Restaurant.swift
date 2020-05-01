//
//  Restaurant.swift
//  MVVMRxSwift
//
//  Created by Leo Moon on 2020-04-30.
//  Copyright © 2020 Leo Moon. All rights reserved.
//

import Foundation

struct Restaurant : Decodable{
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String, Decodable {
    case european
    case indian
    case mexican
    case french
    case english
}
