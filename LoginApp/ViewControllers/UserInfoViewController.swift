//
//  UserInfoViewController.swift
//  LoginApp
//
//  Created by Supodoco on 04.10.2022.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var positionInCompanyLabel: UILabel!
    
    @IBOutlet var userImage: UIImageView!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientConfigure()
        title = person.fullName
        
        userLabelsConfigure()
        userImageConfigure()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.person = person
    }
    
    private func userLabelsConfigure() {
        nameLabel.text              = "Имя: \(person.name)"
        surnameLabel.text           = "Фамилия: \(person.surname)"
        companyLabel.text           = "Компания: \(person.company)"
        departmentLabel.text        = "Отдел: \(person.department)"
        positionInCompanyLabel.text = "Должность: \(person.positionInCompany)"
    }
    
    private func userImageConfigure() {
        userImage.image = UIImage(named: person.image)
        userImage.layer.cornerRadius = userImage.frame.height / 2
    }
}
