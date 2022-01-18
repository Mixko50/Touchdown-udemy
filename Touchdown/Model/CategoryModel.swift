//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Mixko on 18/1/2565 BE.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
