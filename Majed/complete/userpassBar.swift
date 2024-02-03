//
//  userpassBar.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI

struct userpassBar: View {
    var body: some View {
        VStack{
            
            Button{} label: {
                Image(systemName: "arrow.backward")
                    .padding(.trailing,300)
                    .foregroundColor(.black)
            }
            
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100,height: 100)
                .foregroundColor(.blue)
                .padding()
                Text("Login to Your Account")
                .font(.largeTitle)
                .bold()
            HStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: .infinity,height: 60)
                    .opacity(0.1)
                    .foregroundColor(.gray)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay {
                        HStack{
                            Image(systemName: "envelope.fill")
                            Text("Email")
                        }                                .opacity(0.3)
                            .padding(.trailing,270)
                    }.padding(.horizontal)
            }
            
            HStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: .infinity,height: 60)
                    .opacity(0.1)
                    .foregroundColor(.gray)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay {
                        HStack{
                            
                            Image(systemName: "lock.fill")
                            Text("Password")
                            Spacer()
                            Image(systemName: "eye.slash.fill")
                            
                        }
                        
                        .opacity(0.3)
                        .padding()
                    }.padding()
            }
        }
    }
}

#Preview {
    userpassBar()
}
