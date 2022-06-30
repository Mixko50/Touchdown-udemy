//
//  Shop.swift
//  Touchdown
//
//  Created by Mixko on 30/6/2565 BE.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
