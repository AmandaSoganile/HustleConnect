//
//  ContentView.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var imageOffsetX: CGFloat = -200
    @State private var imageScale: CGFloat = 0.6
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 8) {
                Image("HustleConnectNoBackground")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 385, height: 500)
                    .offset(x: imageOffsetX)
                    .scaleEffect(imageScale)
                    .padding(.bottom, 4)
                    .onAppear {
                        withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.6)) {
                            imageOffsetX = 0
                            imageScale = 1.0
                        }
                    }
                
                
                Text("Find local work and turn your skills into income. Discover nearby hustles, choose what fits you, and start earning on your own terms.")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.bottom, 24)
                
                
                NavigationLink{
                    SignIn()
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width:380, height: 78)
                            .foregroundStyle(Color.appBlue.gradient)
                        
                        Text("Get Started")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                    }
                }
                
//                Spacer()
            }
            //        .padding()
        }
    }
}

#Preview {
    ContentView()
}

