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
        gradientConfigure()
        welcomeLabel.text = welcomeString
    }
    
    // MARK: - Private Methods
    private func gradientConfigure() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [
            UIColor(red: 204/255, green: 126/255, blue: 144/255, alpha: 1).cgColor,
            UIColor(red: 122/255, green: 155/255, blue: 222/255, alpha: 1).cgColor
        ]
        view.layer.insertSublayer(gradient, at: 0)
    }
   

}
