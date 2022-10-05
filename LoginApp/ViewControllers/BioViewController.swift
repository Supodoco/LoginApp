//
//  BioViewController.swift
//  LoginApp
//
//  Created by Supodoco on 04.10.2022.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var bioLabel: UILabel!
    
    var bioText: String!
    var bioTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientConfigure()
        navigationController?.navigationBar.tintColor = UIColor.white
        title = bioTitle + " Bio"
        bioLabel.text = bioText
    }
   
}
