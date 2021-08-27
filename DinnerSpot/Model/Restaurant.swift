//
//  Restaurant.swift
//  DinnerSpot
//
//  Created by Mykola Maslov on 8/13/21.
//

import Foundation


struct Restaurant: Hashable {
    var name: String = ""
    var type: String = ""
    var location: String = ""
    var phone: String = ""
    var description: String = ""
    var image: String = ""
    var isFavorite: Bool = false
}
