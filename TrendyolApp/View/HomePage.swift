//
//  ContentView.swift
//  TrendyolApp
//
//  Created by Bahar Şen on 21.03.2026.
//

import SwiftUI

struct HomePage: View {
    @State private var isFavorite = false
    @State private var isScrolled = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                
               
                LinearGradient(colors: [.orange, .pink, .purple], startPoint: .leading, endPoint: .trailing)
                    .ignoresSafeArea()
                    .frame(height: 130)
                    .opacity(isScrolled ? 0 : 1)
                    .animation(.easeInOut(duration: 0.2), value: isScrolled)
                
                VStack(spacing: 0) {
                    
                 
                    VStack(spacing: 0) {
                        HStack() {
                            Image("menu")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding(.trailing, 4)
                            
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                
                                TextField("Görselle Ara", text: .constant(""))
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(.gray)
                            }
                            .padding(10)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .frame(maxWidth: .infinity)
                            
                            HStack {
                                Image(systemName: "envelope")
                                Image(systemName: "bell")
                            }
                        }.padding(10)
                        
                       
                        if !isScrolled {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    Button("Trendyol+") { }.padding(10).foregroundStyle(.white).background(.orange).cornerRadius(20)
                                    Button("Kadın")     { }.padding(10).foregroundStyle(.white).background(.orange).cornerRadius(20)
                                    Button("Erkek")     { }.padding(10).foregroundStyle(.white).background(.orange).cornerRadius(20)
                                    Button("Avantajlar"){ }.padding(10).foregroundStyle(.white).background(.orange).cornerRadius(20)
                                    Button("Moda")      { }.padding(10).foregroundStyle(.white).background(.orange).cornerRadius(20)
                                    Button("Kozmetik")  { }.padding(10).foregroundStyle(.white).background(.orange).cornerRadius(20)
                                    Button("Süpermarket"){ }.padding(10).foregroundStyle(.white).background(.orange).cornerRadius(20)
                                }.padding(.leading)
                            }
                            .transition(.move(edge: .top).combined(with: .opacity))
                        }
                    }
                    .background(isScrolled ? Color.white : Color.clear)
                    .animation(.easeInOut(duration: 0.1), value: isScrolled)
                    .shadow(color: isScrolled ? .gray.opacity(0.3) : .clear, radius: 4)
                    
                    
                    ScrollView {
                        VStack(spacing: 20) {
                            
                           
                            GeometryReader { geo in
                                Color.clear.onChange(of: geo.frame(in: .global).minY) { _, newValue in
                                    withAnimation {
                                        isScrolled = newValue < 60
                                    }
                                }
                            }
                            .frame(height: 0)
                            
                            
                            ZStack(alignment: .bottomTrailing) {
                                LinearGradient(colors: [.color2, .color3, .color4], startPoint: .leading, endPoint: .trailing).frame(height: 110)
                                HStack {
                                    VStack {
                                        Text("  Bahar Fırsatları Başladı!")
                                            .font(.system(size: 20, weight: .heavy))
                                            .foregroundStyle(.white).padding(1)
                                        Text("%70'e varan indirim")
                                            .foregroundStyle(.white).font(.system(size: 20, weight: .thin))
                                    }
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                    .padding()
                                    Image("promotion").resizable().frame(width: 60, height: 50).padding(25)
                                }
                                Text("1/5").padding(3).background(.color6).cornerRadius(7).font(.system(size: 12)).foregroundStyle(.white).padding(6)
                            }.shadow(radius: 5)
                            
                           
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(alignment: .top, spacing: 5) {
                                    VStack(spacing: 8) {
                                        ZStack {
                                            Circle()
                                                .fill(Color.white)
                                                .overlay(Circle()
                                                .stroke(Color.yellow, lineWidth: 2))
                                                .frame(width: 70, height: 70)
                                            Image("food1")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 40, height: 55)
                                        }
                                        Text("Yemek").frame(width: 100)
                                            .font(.system(.subheadline))
                                            .multilineTextAlignment(.center)
                                    }
                                    VStack(spacing: 8) {
                                        ZStack {
                                            Circle()
                                                .fill(Color.white)
                                                .overlay(Circle().stroke(Color.green, lineWidth: 2))
                                                .frame(width: 70, height: 70)
                                            Image("market")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 70, height: 50)
                                        }
                                        Text("Hızlı Market")
                                            .frame(width: 100)
                                            .font(.system(.subheadline))
                                            .multilineTextAlignment(.center)
                                    }
                                    VStack(spacing: 8) {
                                        ZStack {
                                            Circle()
                                                .fill(Color.white)
                                                .overlay(Circle().stroke(Color.orange, lineWidth: 2))
                                                .frame(width: 70, height: 70)
                                            
                                            Image("sale")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 100, height: 50)
                                        }
                                        Text("Bugün Fiyatı\nDüşenler")
                                            .frame(width: 110)
                                            .font(.system(.subheadline))
                                            .multilineTextAlignment(.center)
                                    }
                                    VStack(spacing: 8) {
                                        ZStack {
                                            Circle()
                                                .fill(Color.white)
                                                .overlay(Circle().stroke(Color.pink, lineWidth: 2))
                                                .frame(width: 70, height: 70)
                                            
                                            Image("coupon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 40, height: 40)
                                        }
                                        Text("Kuponlar")
                                            .frame(width: 100)
                                            .font(.system(.subheadline))
                                            .multilineTextAlignment(.center)
                                    }
                                }
                                .padding(.top, 5)
                            }
                            
                          
                            VStack {
                                HStack {
                                    Text("Sana Özel Ürünler")
                                    Spacer()
                                    Button("Tümünü Gör >") { }
                                        .foregroundStyle(Color.orange)
                                        .font(.subheadline)
                                }.padding()
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        ForEach(products) { product in
                                            VStack(alignment: .leading, spacing: 4) {
                                                ZStack {
                                                    Image(product.productImage)
                                                        .resizable()
                                                        .scaledToFill()
                                                        
                                                        .frame(width: 120, height: 155).clipped()
                                                    Button {
                                                        isFavorite.toggle()
                                                    } label: {
                                                        ZStack {
                                                            Circle()
                                                                .fill(.white)
                                                                .frame(width: 24, height: 24)
                                                                .shadow(radius: 2)
                                                            
                                                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                                                .foregroundStyle(isFavorite ? .red : .black)
                                                                .font(.system(size: 11))
                                                        }
                                                    }
                                                    .frame(width: 120, height: 155, alignment: .topTrailing)
                                                    .padding(8)
                                                    
                                                    Group {
                                                        if let cargo = product.cargo {
                                                            Text(cargo)
                                                                .font(.system(size: 9))
                                                                .foregroundStyle(.white)
                                                                .frame(maxWidth: .infinity)
                                                                .padding(.vertical, 2)
                                                                .background(Color.gray)
                                                        } else {
                                                            Color.clear.frame(height: 15)
                                                        }
                                                    }
                                                    .frame(width: 120, height: 155, alignment: .bottom)
                                                }
                                                .frame(width: 120, height: 155)
                                                
                                                Text(product.productName)
                                                    .font(.system(size: 12))
                                                    .lineLimit(2)
                                                    .frame(height: 15, alignment: .top)
                                                
                                                HStack(spacing: 4) {
                                                    Image(systemName: "star.fill")
                                                        .foregroundStyle(.yellow)
                                                        .font(.system(size: 10))
                                                    Text(String(format: "%.1f", product.rating))
                                                        .font(.system(size: 10))
                                                    
                                                    Text("(\(product.reviewCount))")
                                                        .font(.system(size: 10))
                                                        .foregroundStyle(.gray)
                                                }
                                                
                                                HStack(spacing: 4) {
                                                    if let discount = product.discount {
                                                        Text(discount)
                                                            .font(.system(size: 9))
                                                            .foregroundStyle(.white)
                                                            .padding(.horizontal, 4)
                                                            .padding(.vertical, 2)
                                                            .background(Color("discount")).cornerRadius(5)
                                                    }
                                                    Text(product.productPrice)
                                                        .font(.system(size: 13, weight: .semibold))
                                                        .foregroundStyle(product.discount != nil ? .discount : .black)
                                                }
                                                
                                                if let oldPrice = product.productOldPrice {
                                                    Text(oldPrice)
                                                        .font(.system(size: 10))
                                                        .foregroundStyle(.gray)
                                                        .strikethrough(true, color: .gray)
                                                }
                                            }
                                            .frame(width: 120, height: 230, alignment: .top)
                                            .background(Color.white)
                                            .cornerRadius(10)
                                            .shadow(radius: 3)
                                        }
                                    }
                                    .padding(.horizontal)
                                    .padding(.bottom, 10)
                                }
                                
                                VStack {
                                    Text("Sana Özel Kategoriler")
                                        .font(.system(size: 15))
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.horizontal)
                                    
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack(spacing: 14) {
                                            ForEach(category) { category in
                                                VStack {
                                                    ZStack {
                                                        Rectangle()
                                                            .frame(width: 80, height: 80)
                                                            .foregroundStyle(Color("categorybackground")).cornerRadius(15)
                                                        
                                                        Image(category.categoryImage)
                                                            .resizable()
                                                            .frame(width: 76, height: 76)
                                                            .cornerRadius(15)
                                                    }
                                                    Text(category.categoryName)
                                                        .font(.system(size: 10))
                                                        .lineLimit(2)
                                                }
                                            }
                                        }.padding(.horizontal)
                                        
                                        HStack(spacing: 14) {
                                            ForEach(category1) { category in
                                                VStack {
                                                    ZStack {
                                                        Rectangle()
                                                            .frame(width: 80, height: 80)
                                                            .foregroundStyle(Color("categorybackground")).cornerRadius(15)
                                                        Image(category.categoryImage)
                                                            .resizable()
                                                            .frame(width: 76, height: 76)
                                                            .cornerRadius(15)
                                                    }
                                                    Text(category.categoryName)
                                                        .font(.system(size: 10))
                                                        .lineLimit(2)
                                                }
                                            }
                                        }.padding(.horizontal)
                                    }
                                }
                            }
                        }
                    }
                }
                
            }
            .navigationBarHidden(true)
            
            VStack {
                BottomBarView()
                    }
        }
    }
}

#Preview {
    HomePage()
}
