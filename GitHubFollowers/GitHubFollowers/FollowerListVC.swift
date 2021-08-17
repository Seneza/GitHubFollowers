//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by Gaston Seneza on 7/3/20.
//  Copyright © 2020 Gaston Seneza. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
