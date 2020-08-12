//
//  Follower.swift
//  GHFollowers
//
//  Created by Miguel Planckensteiner on 23.07.20.
//  Copyright © 2020 Miguel Planckensteiner. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
