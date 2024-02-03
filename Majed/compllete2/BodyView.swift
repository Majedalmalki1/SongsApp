//
//  BodyView.swift
//  Majed
//
//  Created by 10M on 20/07/1445 AH.
//

import SwiftUI

struct home: Identifiable {
    var id: UUID = UUID()
    var name: String
    var addr: String
    var rating: Int
    var price: Int
    var photo: String
}
var home1 = home(name: "Lucky", addr: "There", rating: 4 , price: 32 ,photo: "a1")
var home2 = home(name: "Home", addr: "Here", rating: 4, price: 120, photo: "a2")
var home3 = home(name: "Place", addr: "Somewhere", rating: 3, price: 25, photo: "a3")
var home4 = home(name: "WOW", addr: "No where", rating: 1, price: 7, photo: "a4")
var home5 = home(name: "good home", addr: "No where", rating: 1, price: 20, photo: "a1")
var home6 = home(name: "Village", addr: "No where", rating: 2, price: 40, photo: "a3")
var home7 = home(name: "High Sky", addr: "No where", rating: 5, price: 200, photo: "a2")

var allhomes: [home] = [
    home1,
    home2,
    home3,
    home4,
    home5,
    home6,
    home7
]

struct BodyView: View {
    var body: some View {
VStack{
    ScrollView() {
        VStack{
            
            HStack{
                
            Text("Our Recomendation")
                    .bold()
                Spacer()
                Button("See All"){}
            }.padding()
            
            
            ScrollView(.horizontal){
                
                HStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 100,height: 35)
                    .foregroundColor(.blue)
                    .overlay {
                        Text("✅ ALL")
                            .foregroundColor(.white)
                            .bold()
                    }
                
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 100,height: 35)
                    .foregroundColor(.blue)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: 95,height: 30)
                            .foregroundColor(.white)

                            .foregroundColor(.white)
                            .bold()
                            .overlay {
                                
                                Text("🏡 House")
                            }
                    }
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 100,height: 35)
                        .foregroundColor(.blue)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 95,height: 30)
                                .foregroundColor(.white)

                                .foregroundColor(.white)
                                .bold()
                                .overlay {
                                    
                                    Text("🏠 Villa")
                                }
                        }
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 100,height: 35)
                        .foregroundColor(.blue)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(width: 95,height: 30)
                                .foregroundColor(.white)

                                .foregroundColor(.white)
                                .bold()
                                .overlay {
                                    
                                    Text("🏢 Apartment")
                                }
                        }
                
                
                
                
            } //end of buttns
            }.padding(.vertical)
            
            ForEach(allhomes, id: \.id ) { i in
                HStack{
                Image("\(i.photo)")
                    .resizable()
                    .frame(width: 150,height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                    .overlay {
                        VStack {
                            HStack{
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .frame(width: 45,height: 25)
                                    .foregroundColor(.white)
                                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                    .overlay {
                                        HStack{
                                            Image(systemName: "star.fill")
                                                .font(.system(size: 15))
                                                .foregroundColor(.yellow)
                                                .padding(.horizontal,0)
                                            Text("\(i.rating)")
                                                .font(.system(size: 13))
                                                .padding(.trailing,6)
                                        }
                                        
                                    }
                                
                                
                                
                            } .padding(.leading,90)
                                .padding(.top,20)//rating
                            
                            Spacer()
                            
                        }
                        }
                    HStack{
                        VStack{
                            Text(i.name)
                                .font(.title)
                                .padding(.trailing,40)
                                
                                .fontWeight(Font.Weight.heavy)
                            Text(i.addr)
                                .opacity(0.5)
                                .padding(.trailing)
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "heart")
                                .padding(.leading)
                                .padding(.bottom)
                                .foregroundColor(.blue)
                            
                            
                            Text("$\(i.price)")
                                .font(.title)
                                .bold()
                                .foregroundStyle(.blue)                                                  .padding(.trailing)
                            Text("/night")
                                .opacity(0.5)
                                .font(.system(size: 12))
                        }

                    }
                    }//HSTAK
                
                
               
                
            }           }
        
    }
    
    
    
    
    
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
    BodyView()
}
