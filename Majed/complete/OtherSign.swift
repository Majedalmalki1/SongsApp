//
//  OtherSign.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI

struct OtherSign: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .frame(width: 70 ,height: 1)
                    .opacity(0.3)
                    .padding(.trailing , 30)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .blur(radius: 1)
                Text("or continue with")
                    .bold()
                    .opacity(0.5)
                
                Rectangle()
                
                    .frame(width: 70 ,height: 1)
                    .opacity(0.3)
                    .padding(.leading , 20)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .blur(radius: 1)
                
                
                
                
            }
            .padding()
            
            HStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 80)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .overlay {
                        Button{}
                    label:{
                        Image("img4")
                            .resizable()
                            .frame(width: 50,height: 50)
                    }
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .opacity(0.8)
                        
                    
                    }
                
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 80)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .overlay {
                        Button{}
                    label:{
                        Image("img3")
                            .resizable()
                            .frame(width: 50,height: 50)
                    }
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding()
                        
                        
                    
                    }
                    
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 80)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .overlay {
                        Button("",systemImage: "apple.logo"){}
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.leading,10)
                        
                        
                    
                    }
                
            }
            .padding()
            HStack{
                Text("Don't have an acount? ")
                Button("Sign up"){}
            }
        }
    }
}

#Preview {
    OtherSign()
}
