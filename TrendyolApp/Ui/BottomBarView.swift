//
//  BottomBarViewle.swift
//  TrendyolApp
//
//  Created by Bahar Şen on 7.04.2026.
//

import SwiftUI

struct BottomBarView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(spacing: 0) {
            
            Divider() 
            
            HStack {
                
                Spacer()
                
                VStack(spacing: 4) {
                    Image(systemName: "house")
                    Text("Anasayfa")
                        .font(.system(size: 10))
                }
                .foregroundColor(selectedTab == 0 ? .orange : .black)
                .onTapGesture {
                    selectedTab = 0
                }
                
                Spacer()
                
                VStack(spacing: 4) {
                    Image(systemName: "bag")
                    Text("Trendyol Go")
                        .font(.system(size: 10))
                }
                .foregroundColor(selectedTab == 1 ? .orange : .black)
                .onTapGesture {
                    selectedTab = 1
                }
                
                Spacer()
                
                VStack(spacing: 4) {
                    Image(systemName: "heart")
                    Text("Favorilerim")
                   .font(.system(size: 10))
                }
                .foregroundColor(selectedTab == 2 ? .orange : .black)
                .onTapGesture {
                    selectedTab = 2
                }
                
                Spacer()
                
                VStack(spacing: 4) {
                    Image(systemName: "cart")
                    Text("Sepetim")
                    .font(.system(size: 10))
                }
                .foregroundColor(selectedTab == 3 ? .orange : .black)
                .onTapGesture {
                    selectedTab = 3
                }
                
                Spacer()
                
                VStack(spacing: 4) {
                    Image(systemName: "person")
                    Text("Hesabım")
                        .font(.system(size: 10))
                }
                .foregroundColor(selectedTab == 4 ? .orange : .black)
                .onTapGesture {
                    selectedTab = 4
                }
                
                Spacer()
            }
            .font(.system(size: 11))
            .padding(.top, 6)
            .padding(.bottom, 10)
        }
        .background(Color.white.ignoresSafeArea(edges: .bottom))
        .shadow(radius: 5)
    }
}
