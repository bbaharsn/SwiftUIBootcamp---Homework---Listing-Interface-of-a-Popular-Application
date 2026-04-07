//
//  SpecialCategori.swift
//  TrendyolApp
//
//  Created by Bahar Şen on 7.04.2026.
//

import Foundation
struct SpecialCategory: Identifiable{
    var id: Int
    var categoryName: String
    var categoryImage: String
    
    init(id: Int, categoryName: String, categoryImage: String) {
        self.id = id
        self.categoryName = categoryName
        self.categoryImage = categoryImage
    }
    
}

let category: [SpecialCategory] = [
    SpecialCategory(id: 1, categoryName: "Kitap", categoryImage: "book"),
    SpecialCategory(id: 2, categoryName: "Çiçek", categoryImage: "flower"),
    SpecialCategory(id: 3, categoryName: "Makyaj", categoryImage: "make-up"),
    SpecialCategory(id: 4, categoryName: "Bakım Ürünleri", categoryImage: "care-products"),
    SpecialCategory(id: 5, categoryName: "Mutfak", categoryImage: "kitchen")
    
]

let category1: [SpecialCategory] = [
    SpecialCategory(id: 6, categoryName: "Kahve Bardağı", categoryImage: "coffee-cup"),
    SpecialCategory(id: 7, categoryName: "Kırtasiye", categoryImage: "stationary"),
    SpecialCategory(id: 8, categoryName: "Raf", categoryImage: "shelf"),
    SpecialCategory(id: 9, categoryName: "Jean", categoryImage: "jean"),
    SpecialCategory(id: 10, categoryName: "Spor Ayakkabı", categoryImage: "shoes")
    
]

