//
//  Featured.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI

struct place: Identifiable {
    var id: UUID = UUID()
    var name: String
    var addr: String
    var rating: Int
    var price: Int
    var photo: String
}
var place1 = place(name: "Majed", addr: "Al hamra", rating: 4 , price: 32 ,photo: "a1")
var place2 = place(name: "retz", addr: "tahlia", rating: 4, price: 120, photo: "a2")
var place3 = place(name: "Good", addr: "Somewhere", rating: 3, price: 25, photo: "a3")
var place4 = place(name: "WOW", addr: "Taif road", rating: 1, price: 7, photo: "a4")

var allplaces: [place] = [
    place1,
    place2,
    place3,
    place4
]

struct Featured: View {
    var body: some View {
        HStack{
            Text("Featured")
                .bold()
                .font(.title2)
            Spacer()
            Button("See All"){}
        } .padding(.horizontal)
        VStack{
            ScrollView(.horizontal) {
                HStack{
                    ForEach(allplaces, id: \.id ) { i in
                        
                        Image("\(i.photo)")
                            .resizable()
                            .frame(width: 200,height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                            .overlay {
                                VStack {
                                    VStack{
                                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                            .frame(width: 25,height: 10)
                                            .foregroundColor(.white)
                                            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                            .overlay {
                                                HStack{
                                                    Image(systemName: "star.fill")
                                                        .font(.system(size: 5))
                                                        .foregroundColor(.yellow)
                                                        .padding(.horizontal,0)
                                                    Text("\(i.rating)")
                                                        .font(.system(size: 8))
                                                }
                                                
                                            }
                                    } .padding(.leading,140) 
                                        .padding(.top,10)//rating
                                    Spacer()
                                    VStack{
                                        HStack{
                                            VStack {
                                                HStack{
                                                    Text("\(i.name)")
                                                        .foregroundColor(.white)
                                                        .bold()
                                                        .fontWeight(.heavy)
                                                }                                    .padding(.trailing,119)
                                                
                                                HStack{
                                                    Text("\(i.addr)")
                                                        .font(.system(size: 10))
                                                        .foregroundColor(.white)
                                                        .opacity(0.9)
                                                }                                    .padding(.trailing,125)
                                                
                                            }               }
                                        
                                        HStack{
                                            HStack{
                                                Text("\(i.price)$")
                                                    .foregroundColor(.white)
                                                    .bold()
                                                    .fontWeight(.heavy)
                                                
                                                Text("/ night")
                                                    .font(.system(size: 10))
                                                    .foregroundColor(.white)
                                                .opacity(0.9)}
                                            
                                            Spacer()
                                            
                                            HStack{
                                                Image(systemName: "heart")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.white)
                                                    .opacity(0.9)
                                                
                                            }
//
                                        }
                                    } .padding()
                                }
                                
                            }
                    }           }}
            
            
            
            
            
            //        HStack{
            //            Text("Our Recommendation")
            //                .bold()
            //                .font(.title3)
            //            Spacer()
            //            Button("See All"){}
            //        } .padding(.horizontal)
            
        }
    }
}
#Preview {
    Featured()
}
