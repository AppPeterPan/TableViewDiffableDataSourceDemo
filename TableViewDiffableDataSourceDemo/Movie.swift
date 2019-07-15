//
//  Movie.swift
//  TableViewDiffableDataSourceDemo
//
//  Created by SHIH-YING PAN on 2019/7/14.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import Foundation

enum Section: String, CaseIterable {
    case romance
    case adventure
}

struct Movie: Hashable {
    var name: String
    var actor: String
    var year: Int
}
