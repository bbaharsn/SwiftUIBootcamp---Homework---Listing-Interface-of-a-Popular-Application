//
//  Products.swift
//  TrendyolApp
//
//  Created by Bahar Şen on 5.04.2026.
//

import Foundation
struct Products: Identifiable{
    var id: Int
    var productName: String
    var productPrice: String
    var productOldPrice: String?
    var discount: String?
    var productImage: String
    var cargo: String?
    var rating: Double
    var reviewCount: String
    
    init(id: Int, productName: String, productPrice: String, productOldPrice: String? = nil, discount: String? = nil, productImage: String, cargo: String? = nil, rating: Double, reviewCount: String) {
        self.id = id
        self.productName = productName
        self.productPrice = productPrice
        self.productOldPrice = productOldPrice
        self.discount = discount
        self.productImage = productImage
        self.cargo = cargo
        self.rating = rating
        self.reviewCount = reviewCount
     
    }
  
    
    
}

let products: [Products] = [
    Products(id: 1, productName: "Çiçekli Kolye", productPrice: "399.90 TL", productOldPrice: nil, discount: nil, productImage: "necklace", cargo: "Kargo Bedava", rating: 4.3, reviewCount: "389"),
    
    Products(id: 2, productName: "Siyah Basic Tshirt", productPrice: "199.90 TL", productOldPrice: "249.90 TL", discount: "-%20", productImage: "tshirt", cargo: nil, rating: 4.7, reviewCount: "402"),
    
    Products(id: 3, productName: "Taş Detaylı Yüzük", productPrice: "999.90 TL", productOldPrice: nil, discount: nil, productImage: "ring", cargo: "Kargo Bedava", rating: 3.9, reviewCount: "29"),
    
    Products(id: 4, productName: "Taşlı Bileklik", productPrice: "349.00 TL", productOldPrice: nil, discount: nil, productImage: "bracelet", cargo: "Kargo Bedava", rating: 4.8, reviewCount: "856")
]
