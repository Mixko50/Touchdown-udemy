//
//  Constant.swift
//  Touchdown
//
//  Created by Mixko on 15/1/2565 BE.
//

import SwiftUI

// Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")

// Color
let colorBackground: Color = Color("ColorBackground")
let colorGrey: Color = Color(UIColor.systemGray4)

// Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible() , spacing: rowSpacing), count: 2)
}

// UX
// API
// Image
// Font
// String
// Misc
