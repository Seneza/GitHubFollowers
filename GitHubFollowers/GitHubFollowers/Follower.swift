//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Gaston Seneza on 8/17/21.
//  Copyright © 2021 Gaston Seneza. All rights reserved.
//

import Foundation

struct Follower: Codable {
    //edges cases: make below variables optionals to avoid app crash. However, GitHub throws defaults value so we're safe to not make them optionals
    var login: String
    var avatarUrl: String
}
