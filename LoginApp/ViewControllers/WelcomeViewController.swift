//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Supodoco on 30.09.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    var welcomeString: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientConfigure()
        welcomeLabel.text = "Welcome, \(welcomeString ?? "Anonymous")!"
    }

}


