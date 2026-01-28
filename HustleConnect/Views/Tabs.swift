//
//  Tabs.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import SwiftUI

struct Tabs: View {
    var job: Job
    var category: Category
    
    var body: some View {
        TabView {
            Dashboard(job: job)
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                        }
                    
                    Categories(category: category)
                        .tabItem {
                            Label("Categories", systemImage: "square.grid.2x2.fill")
                        }
                    
                    ActiveHustles()
                        .tabItem {
                            Label("Active Jobs", systemImage: "list.bullet.clipboard.fill")
                        }
                }
    }
}

#Preview {
    Tabs(job: Job(title: "Walk dog", description: "", price: 20, status:"Available", location: "Byo"), category:  Category(
        image: Image(systemName: "figure.and.child.holdinghands"),
        title: "Children"
    ))
}
