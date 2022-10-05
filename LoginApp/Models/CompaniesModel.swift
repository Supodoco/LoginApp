//
//  CompaniesModel.swift
//  LoginApp
//
//  Created by Supodoco on 05.10.2022.
//

import Foundation

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
