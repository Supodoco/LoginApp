//
//  UserModel.swift
//  LoginApp
//
//  Created by Supodoco on 05.10.2022.
//

import Foundation

struct UserModel {
    let name: String
    let surname: String
    let company: String
    let department: String
    let positionInCompany: String
    let image: String
    let bio: String
    
    static func getUserInfo() -> UserModel {
        UserModel(
            name: "Steve",
            surname: "Jobs",
            company: "Apple",
            department: "Managment",
            positionInCompany: "SEO up to 2011",
            image: "SteveJobs",
            bio: "Американский инженер и предприниматель, сооснователь компании Apple Inc Стив Джобс, полное имя Стивен Пол Джобс, родился 24 февраля 1955 года в Сан-Франциско, США. Его биологические родители американка Джоан Шибле и сириец Абдулфаттах Джон Джандали не состояли в браке, отказались от ребенка. Приемными родителями мальчика стали Пол и Клара Джобс. Клара работала бухгалтером, а Пол Джобс был механиком."
        )
    }
}
