//
//  Hustle_Model.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import Foundation
import SwiftUI

struct Job : Identifiable{
    var id: UUID?
    var title: String
    var description: String
    var category: Category
    var price: Int
    var status: String
    var location: String
}


let jobs: [Job] = [
    Job(
        id: UUID(),
        title: "Math Tutoring",
        description: "Help a high school student with algebra and geometry.",
        category: Category(image: Image(systemName: "book.fill"), title: "Tutoring"),
        price: 10,
        status: "Available",
        location: "Harare"
    ),
    Job(
        id: UUID(),
        title: "Garden Cleaning",
        description: "Clear weeds and tidy a small backyard garden.",
        category: Category(image: Image(systemName: "leaf.fill"), title: "Gardening"),
        price: 15,
        status: "Available",
        location: "Bulawayo"
    ),
    Job(
        id: UUID(),
        title: "Phone Setup Help",
        description: "Assist with setting up email and apps on a smartphone.",
        category: Category(image: Image(systemName: "iphone"), title: "Tech Help"),
        price: 8,
        status: "Completed",
        location: "Gweru"
    )
]

