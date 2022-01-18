//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Mixko on 18/1/2565 BE.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(header: SectionView(rotateClockwise: false), footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) {item in
                        CategoryItemView(categoey: item)
                    }
                }
            }) // Grid
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 30)
        }) // Scroll
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
