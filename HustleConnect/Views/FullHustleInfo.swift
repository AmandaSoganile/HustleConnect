//
//  FullHustleInfo.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import SwiftUI

struct FullHustleInfo: View {
    var job : Job
    
    var body: some View {
        NavigationStack{
            Text("Math Tutoring")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 190, height: 40)
                        .foregroundStyle(Color.orange)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse.circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(Color.white)
                        
                        Text("Bulawayo")
                            .foregroundStyle(Color.white)
                            .fontWeight(.semibold)
                    }
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 190, height: 40)
                        .foregroundStyle(Color.orange)
                    Text("Category: Tutoring")
                        .foregroundStyle(Color.white)
                        .fontWeight(.semibold)
                }
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 385, height: 40)
                    .foregroundStyle(Color.safeGreen)
                Text("Estimated Earnings : $120")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
            }
            VStack(alignment: .center){
                
                Text("Description")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ")
                    .font(.caption)
                    .fontWeight(.medium)
                    .padding([.leading, .bottom, .trailing])
            }
            .padding()
            
            
            NavigationLink{
                Dashboard(job: job)
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 385, height: 65)
                        .foregroundStyle(Color.appBlue.gradient)
                    Text("Send Request")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
}

#Preview {
    FullHustleInfo(job: Job(title: "Walk dog", description: "", category: Category(
        image: Image(systemName: "figure.and.child.holdinghands"), title: "Children"), price: 20, status:"Available", location: "Byo"))
}
