//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Mixko on 27/6/2565 BE.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        let scenes = UIApplication.shared.connectedScenes
        let windowScenes = scenes.first as? UIWindowScene
        let window = windowScenes?.windows.first?.safeAreaInsets.top
        
        VStack(alignment: .leading, spacing: 5, content: {
            // Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, window)
            
            // Header
            HederDetailView()
                .padding(.horizontal)
            
            // Detail Top Bar
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail Bottom Bar
            VStack(alignment: .center, spacing: 0, content: {
                // Ratings + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                 
                // Quantity + Favorite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
                
                // Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                
                Spacer()
            })
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
                .padding(.top, -105))
            
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
