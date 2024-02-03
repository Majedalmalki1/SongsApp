//
//  Recom.swift
//  Majed
//
//  Created by 10M on 20/07/1445 AH.
//

import SwiftUI

struct Recom: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "arrow.backward")
                    .font(.title3)
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: .infinity,height: 60)
                    .opacity(0.1)
                    .foregroundColor(.gray)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay {
                        HStack{
                            
                            Image(systemName: "magnifyingglass")
                                .opacity(0.3)
                            Text("Homes")
                                .bold()
                            Spacer()
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(.blue)
                            
                        }
                        
                        
                        .padding()
                    }.padding()
                
                
                
            }.padding(.horizontal)
            //buttns

                
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
                }
            }
        
    }
    }


#Preview {
    Recom()
}
