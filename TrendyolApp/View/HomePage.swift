//
//  ContentView.swift
//  TrendyolApp
//
//  Created by Bahar Şen on 21.03.2026.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                LinearGradient(colors: [.orange,.pink,.purple], startPoint: .leading, endPoint: .trailing).ignoresSafeArea().frame(height: 130)
                
                ScrollView{
                    VStack(spacing:20){
                        VStack{
                            HStack(){
                                Image("menu")
                                    .resizable().frame(width: 24,height: 24)
                                    .padding(.trailing,4)
                                
                                HStack{
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                    
                                    TextField("Görselle Ara", text: .constant(""))
                                        .frame(maxWidth: .infinity)
                                        .foregroundColor(.gray)
                                    
                                }.padding(10)
                                    .background(Color(.systemGray6))
                                    .cornerRadius(10)
                                    .frame(maxWidth: .infinity)
                                
                                
                                HStack{
                                    Image(systemName: "envelope")
                                    Image(systemName: "bell")
                                }
                                
                            }.padding(10)
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    Button("Trendyol+"){
                                        
                                    }.padding(10)
                                        .background(.color1)
                                        .cornerRadius(20)
                                    
                                    
                                    Button("Kadın"){
                                        
                                    }.padding(10)
                                        .background(.color1)
                                        .cornerRadius(20)
                                    Button("Erkek"){
                                        
                                    }.padding(10)
                                        .background(Color("Color1"))
                                        .cornerRadius(20)
                                    Button("Avantajlar"){
                                        
                                    }.padding(10)
                                        .background(Color("Color1"))
                                        .cornerRadius(20)
                                    
                                    Button("Moda"){
                                        
                                    }.padding(10)
                                        .background(Color("Color1"))
                                        .cornerRadius(20)
                                    Button("Kozmetik"){
                                        
                                    }.padding(10)
                                        .background(Color("Color1"))
                                        .cornerRadius(20)
                                    
                                    Button("Süpermarket"){
                                        
                                    }.padding(10)
                                        .background(Color("Color1"))
                                        .cornerRadius(20)
                                }.padding(.leading)
                            }
                        }
                        
                        ZStack(alignment: .bottomTrailing){
                            LinearGradient(colors: [.color2,.color3,.color4], startPoint: .leading, endPoint: .trailing).frame(height: 110)
                            HStack{
                                VStack{
                                    
                                    Text("  Bahar Fırsatları Başladı!")
                                        .font(.system(size: 20,weight: .heavy))
                                        .foregroundStyle(.white).padding(1)
                                    
                                    Text("%70’e varan indirim")
                                        .foregroundStyle(.white).font(.system(size: 20,weight: .thin))
                                    
                                    
                                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                    .padding()
                                
                                Image("promotion").resizable().frame(width: 60,height: 50).padding(25)
                                
                                 
                            }
                            Text("1/5").padding(3).background(.color6).cornerRadius(7).font(.system(size: 12)).foregroundStyle(.white).padding(6)
                            
                        }.shadow(radius: 5)
                        Text("Kategoriler")
                        Text("Ürünler")
                    }
                    
                    
                }
            }.navigationBarHidden(true)
            
        }
    }
}

#Preview {
    HomePage()
}
