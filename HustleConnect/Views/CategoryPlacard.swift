//
//  SingleCategory.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import SwiftUI

struct CategoryPlacard: View {
    
    var category: Category
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 34)
                .stroke(Color.gray, lineWidth: 1)
                .fill(Color.appBlue.opacity(0.3))
                .frame(width: 170, height: 170)
                .foregroundStyle(Color.gray.opacity(0.1))

            
            VStack{
               category.image
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding()
                
                
                Text(category.title)
                    .font(.title2)
                    .fontWeight(.bold)
            }
            
        }
    }
}

#Preview {
    CategoryPlacard(category: Category(
        image: Image(systemName: "figure.and.child.holdinghands"),
        title: "Children"
    ))
}
