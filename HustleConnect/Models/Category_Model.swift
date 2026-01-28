//
//  Category_Model.swift
//  HustleConnect
//
//  Created by Amanda Soganile on 28/1/2026.
//

import Foundation
import SwiftUI

struct Category{
    var image: Image
    var title: String
}

let categories: [Category] = [
    Category(
        image: Image(systemName: "book.fill"),
        title: "Tutoring"
    ),
    Category(
        image: Image(systemName: "leaf.fill"),
        title: "Garden"
    ),
    Category(
        image: Image(systemName: "house.fill"),
        title: "Home"
    ),
    Category(
        image: Image(systemName: "calendar.badge.clock"),
        title: "Events"
    ),
    Category(
        image: Image(systemName: "pawprint.fill"),
        title: "Pets"
    ),
    Category(
        image: Image(systemName: "figure.and.child.holdinghands"),
        title: "Children"
    )
]

