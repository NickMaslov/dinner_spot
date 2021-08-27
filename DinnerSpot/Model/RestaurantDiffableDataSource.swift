//
//  RestaurantDiffableDataSource.swift
//  DinnerSpot
//
//  Created by Mykola Maslov on 8/13/21.
//

import UIKit

enum Section {
    case all
}

class RestaurantDiffableDataSource: UITableViewDiffableDataSource<Section, Restaurant> {
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
