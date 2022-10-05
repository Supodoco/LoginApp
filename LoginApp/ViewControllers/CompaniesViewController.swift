//
//  CompaniesViewController.swift
//  LoginApp
//
//  Created by Supodoco on 05.10.2022.
//

import UIKit

class CompaniesViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    let companies = CompanyModel.getCompaniesInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientConfigure()
        title = "Companies"
        
        for company in companies {
            infoLabel.text! += company.name + "\n" + company.info + "\n\n"
        }

    }
    

    

}
