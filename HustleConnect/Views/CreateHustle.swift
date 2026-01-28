//
//  CreateHustle.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import SwiftUI

struct CreateHustle: View {
    @State private var categories: [String] = ["Tutoring", "Garden", "Home", "Events", "Pets", "Children"]
    @State private var selectedCategory: String = ""
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var category: String = ""
    @State private var price: String = ""
    @State private var status: String = ""
    @State private var location: String = ""
    
    var body: some View {
        NavigationStack{
            Text("Create A Job")
                .font(.largeTitle)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .foregroundStyle(Color.appBlue)
            
            
            Form{
                Section(header: Text("Title")) {
                    
                    TextField("Title", text: $title)
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(categories, id: \.self) { cat in
                            Text(cat).tag(cat)
                        }
                    }
                }
                
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                }
                
                Section(header: Text("Amount to be earned")) {
                    TextField("$$", text: $price)
                }
                
                Section(header: Text("Status")) {
                    TextField("Available or Done", text: $status)
                }
                
                Section(header: Text("Location")) {
                    TextField("", text: $location)
                }
            }
            .formStyle(.automatic)
            
            NavigationLink{
                CategoryListing()
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 360, height: 55)
                        .foregroundStyle(Color.appBlue.gradient)
                    
                    Text("Create Job")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
}




#Preview {
    CreateHustle()
}
