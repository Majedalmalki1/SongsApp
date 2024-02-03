//
//  head.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI

struct head: View {
    var name1: String = "Majed Almalki"
    var body: some View {
        VStack {
            HStack{
                Image("img5")
                    .resizable()
                    .frame(width: 70,height: 70)
                    .clipShape(Circle())
                VStack{
                    Text("Good Morning 👋")
                        .padding(.trailing,30)
                        .opacity(0.5)
                        .font(.title2)

                    Text(name1)
                        .padding(.trailing)
                        .font(.title)
                        .bold()
                }
                Spacer()
                Circle()
                    .frame(width: 50,height: 50)
                    .shadow(radius: 15)
                    .opacity(0.5)
                    .foregroundColor(.white)
                    .overlay {
                        Button{}label: {
                            Image(systemName: "bell.badge")
                                .foregroundColor(.black)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }
                    }
                
            } .padding(.horizontal)
            
            HStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: .infinity,height: 60)
                    .opacity(0.1)
                    .foregroundColor(.gray)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay {
                        HStack{
                            
                            Image(systemName: "magnifyingglass")
                                .opacity(0.3)
                            Text("Search")
                                .opacity(0.3)
                            Spacer()
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(.blue)
                            
                        }
                        .padding()
                    }.padding()
            }        }
        
    }
}

#Preview {
    head()
}
