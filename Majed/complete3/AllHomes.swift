//
//  AllHomes.swift
//  Majed
//
//  Created by 10M on 20/07/1445 AH.
//

import SwiftUI

struct AllHomes: View {
    var body: some View {
        ScrollView(){
            VStack{
                HStack{
                    Text("866 found")
                        .font(.title3)
                        .bold()
                    Spacer()
                    Image(systemName: "list.bullet.rectangle.fill")
                        .foregroundColor(.blue)
                    Image(systemName: "squareshape.split.2x2")
                        .opacity(0.3)
                        .bold()
                }.padding()
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
                    
                    
                    
                    
                }
            }
            
        }
    }
}

#Preview {
    AllHomes()
}
