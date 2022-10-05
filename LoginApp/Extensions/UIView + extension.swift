//
//  File.swift
//  LoginApp
//
//  Created by Supodoco on 04.10.2022.
//

import UIKit

extension UIView {
    func gradientConfigure() {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [
            UIColor(red: 204/255, green: 126/255, blue: 144/255, alpha: 1).cgColor,
            UIColor(red: 122/255, green: 155/255, blue: 222/255, alpha: 1).cgColor
        ]
        self.layer.insertSublayer(gradient, at: 0)
    }
}
