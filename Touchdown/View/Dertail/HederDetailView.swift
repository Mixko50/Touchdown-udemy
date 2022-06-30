//
//  HederDetailView.swift
//  Touchdown
//
//  Created by Mixko on 27/6/2565 BE.
//

import SwiftUI

struct HederDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("protective gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        })
    }
}

struct HederDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HederDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
