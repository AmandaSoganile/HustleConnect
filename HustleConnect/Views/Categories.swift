//
//  Categories.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import SwiftUI

struct Categories: View {
    
    @State private var searchText: String = ""
    var category: Category
    
    var body: some View {
        NavigationStack{
            
            
            VStack{
                Text("Available Categories")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom, 60)
                    .padding(.top, 50 )
            }
        
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                    ForEach(Array(categories.indices), id: \.self) { index in
                        let item = categories[index]
                        CategoryPlacard(category: item)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    Categories(category:  Category(
        image: Image(systemName: "figure.and.child.holdinghands"),
        title: "Children"
    ))
}
