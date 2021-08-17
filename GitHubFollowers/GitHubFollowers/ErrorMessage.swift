//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Gaston Seneza on 8/17/21.
//  Copyright © 2021 Gaston Seneza. All rights reserved.
//

import Foundation


enum ErrorMessage: String {
    case invalidUserName = "Username created invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please try again."
    case invalidResponse = "Invalid Response from server. Please try again"
    case invalidData = "The data received from server is invalide. Please try again."
}
