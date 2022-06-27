//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Mixko on 27/6/2565 BE.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // Header
            HederDetailView()
                .padding(.horizontal)
            
            // Detail Top Bar
            TopPartDetailView()
                .padding(.horizontal)
            
            // Detail Bottom Bar
            
            // Ratings + Sizes
            
            // Description
            
            // Quantity + Favorite
            
            // Add to cart
            Spacer()
        })
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
            red: sampleProduct.red,
            green: sampleProduct.green,
            blue: sampleProduct.blue)
            .ignoresSafeArea(.all, edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
