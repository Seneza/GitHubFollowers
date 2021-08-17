//
//  User.swift
//  GitHubFollowers
//
//  Created by Gaston Seneza on 8/17/21.
//  Copyright © 2021 Gaston Seneza. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String? //Name is optional on Github
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var cratedAt: String
}
