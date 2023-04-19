//
//  CountryModel.swift
//  Wisdomleaf
//
//  Created by Rahul on 19/04/23.
//

import Foundation

//MARK: CountryModel.

struct CountryModel {
    let title: String
    let image: String
    let description: String
    var isChecked = false
    
    mutating func update(isChecked: Bool) {
        self.isChecked = isChecked
    }
}
