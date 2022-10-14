//
//  CompaniesViewController.swift
//  LoginApp
//
//  Created by Supodoco on 05.10.2022.
//

import UIKit

class CompaniesViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientConfigure()
        title = "Companies"
        
        var companiesInfo = ""
        for company in person.companiesFounded {
            companiesInfo += company.name + "\n" + company.info + "\n\n"
        }
        infoLabel.text = companiesInfo
    }
}
