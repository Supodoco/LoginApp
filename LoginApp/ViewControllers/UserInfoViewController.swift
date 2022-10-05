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
    
    private let userInfo = UserModel.getUserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.gradientConfigure()
        title = userInfo.name + " " + userInfo.surname
        
        userLabelsConfigure()
        userImageConfigure()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.bioText = userInfo.bio
        bioVC.bioTitle = userInfo.name + " " + userInfo.surname
    }
    
    private func userLabelsConfigure() {
        nameLabel.text! += " \(userInfo.name)"
        surnameLabel.text! += " \(userInfo.surname)"
        companyLabel.text! += " \(userInfo.company)"
        departmentLabel.text! += " \(userInfo.department)"
        positionInCompanyLabel.text! += " \(userInfo.positionInCompany)"
    }
    private func userImageConfigure() {
        userImage.image = UIImage(named: userInfo.image)
        userImage.layer.cornerRadius = userImage.frame.height / 2
    }
}
