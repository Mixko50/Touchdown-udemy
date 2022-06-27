//
//  HederDetailView.swift
//  Touchdown
//
//  Created by Mixko on 27/6/2565 BE.
//

import SwiftUI

struct HederDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("protective gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        })
    }
}

struct HederDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HederDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
