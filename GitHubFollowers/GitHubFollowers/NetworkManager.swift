//
//  NetworkManager.swift
//  GitHubFollowers
//
//  Created by Gaston Seneza on 8/17/21.
//  Copyright © 2021 Gaston Seneza. All rights reserved.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
        let endPoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endPoint) else {
            completed(nil, "Invalid request. Please try agan")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let _ = error {
                completed(nil, "Unable to complete your request. Please check your internet")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200  else {
                completed(nil, "Invalid server response. Try again")
                return
            }
            
            guard let data = data else {
                completed(nil, "Invalid server data. Please try again.")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
                
            } catch {
                completed(nil, "Data from server was invalid. Please try again")
            }
        }
        task.resume()
    }
}
