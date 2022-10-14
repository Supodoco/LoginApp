//
//  BioViewController.swift
//  LoginApp
//
//  Created by Supodoco on 04.10.2022.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet var bioLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientConfigure()
        navigationController?.navigationBar.tintColor = UIColor.white
        title = person.fullName + " Bio"
        bioLabel.text = person.bio
    }
   
}
