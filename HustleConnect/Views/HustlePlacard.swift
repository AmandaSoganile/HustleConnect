//
//  HustlePlacard.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import SwiftUI

struct HustlePlacard: View {
    var hustle : Job
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 34)
                .stroke(Color.gray, lineWidth: 1)
                .fill(Color.appBlue.opacity(0.05))
                .frame(width: 350, height: 170)
                .foregroundStyle(Color.gray.opacity(0.1))
//                .shadow(color: Color.gray.opacity(0.5), radius: 2 , x: 1, y: 0)
            
            HStack{
                Image(systemName: "briefcase.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding()
                
                
        
                
                VStack(alignment: .leading){
                    Text(hustle.title)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text("Earning: $\(hustle.price)")
                    
                    Text("Status: \(hustle.status)")
                    
                    Text("Location: \(hustle.location)")
                }
                .padding()
            }
            
        }
        
    }
}

#Preview {
    HustlePlacard(hustle: Job(title: "Walk dog", description: "", price: 20, status:"Available", location: "Byo"))
}
