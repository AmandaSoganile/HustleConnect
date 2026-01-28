//
//  Dashboard.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import SwiftUI

struct Dashboard: View {
    @State var job: Job
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                
                // Background
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
                    // Blue Header
                    VStack {
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                            
                            Spacer()
                            
                            Image(systemName: "gear")
                                .resizable()
                                .frame(width: 40, height: 40)
                        }
                        .padding()
                        
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Hi, Amanda!")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                            Text("Let's find the right job for you")
                                .font(.callout)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .padding(.bottom, 40)
                    }
                    .foregroundStyle(.white)
                    .background(Color.appBlue.gradient)
                }
                
                // White Rounded Card
                VStack(alignment: .leading, spacing: 16) {
                    Text("Latest Jobs")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    ScrollView {
                        LazyVStack(spacing: 12) {
                            ForEach(jobs) { job in
                                HustlePlacard(hustle: job)
                            }
                        }
                        .padding(.vertical, 4)
                    }
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 28, style: .continuous)
                        .fill(Color.white)
                )
                .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))

                .offset(y: 160)
            }
        }
    }
}

#Preview {
    Dashboard(job: Job(title: "Walk dog", description: "", price: 20, status:"Available", location: "Byo"))
}
