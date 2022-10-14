//
//  UserModel.swift
//  LoginApp
//
//  Created by Supodoco on 05.10.2022.
//

import Foundation

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            username: "User",
            password: "123456",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let positionInCompany: String
    let image: String
    let bio: String
    let companiesFounded: [CompanyModel]
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Steve",
            surname: "Jobs",
            company: "Apple",
            department: "Managment",
            positionInCompany: "SEO up to 2011",
            image: "SteveJobs",
            bio: "Американский инженер и предприниматель, сооснователь компании Apple Inc Стив Джобс, полное имя Стивен Пол Джобс, родился 24 февраля 1955 года в Сан-Франциско, США. Его биологические родители американка Джоан Шибле и сириец Абдулфаттах Джон Джандали не состояли в браке, отказались от ребенка. Приемными родителями мальчика стали Пол и Клара Джобс. Клара работала бухгалтером, а Пол Джобс был механиком.",
            companiesFounded: CompanyModel.getCompaniesInfo()
        )
    }
    
}

struct CompanyModel {
    let name: String
    let info: String
    
    static func getCompaniesInfo() -> [CompanyModel] {
        return [
            CompanyModel(
                name: "Apple",
                info: "Американская корпорация, производитель персональных и планшетных компьютеров, аудиоплееров, смартфонов, программного обеспечения и цифрового контента."
            ),
            CompanyModel(
                name: "Pixar",
                info: "Американская студия компьютерной анимации, известная своими критически и коммерчески успешными компьютерными анимационными фильмами."
            ),
            CompanyModel(
                name: "NeXT",
                info: "NeXT была основана в 1985 году Стивом Джобсом после его ухода с должности в Apple."
            )
        ]
    }
}
