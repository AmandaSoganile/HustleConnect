//
//  CategoryListing.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import SwiftUI

struct CategoryListing: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack(alignment: .center){
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(jobs) { job in
                            HustlePlacard(hustle: job)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Tutoring")
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchText, placement: .navigationBarDrawer)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    NavigationLink(destination: CreateHustle()) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryListing()
}
