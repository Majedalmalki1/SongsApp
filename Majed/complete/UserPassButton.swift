//
//  UserPassButton.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI
var ture = 0
struct UserPassButton: View {
@State var stat = false
    var body: some View {
        VStack{
            HStack{
                
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width:30,height: 30)
                        .foregroundColor(.blue)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width:20,height: 20)
                                .foregroundColor(.white)
                                .opacity(stat == false ? 1 : 0)
                        }
                        .overlay(content: {
                            Image(systemName: "checkmark")
                                .opacity(stat == true ? 1 : 0)
                                .foregroundColor(.white)
                                .bold()
                        })
                        .overlay {
                            Button(" "){
                                stat.toggle()
                            }
                        }
                
                
                    Text("Remember me")
                
            } .padding(.bottom,15)
            VStack{
                Button("Sign in") {
                }
                .frame(width: 320,height: 50)
                .background(.blue)
                .foregroundColor(.white)
                
                .cornerRadius(25)
                .padding(.bottom,15)
                Button("Forgot the password?"){}
            }
        }
    }
}

#Preview {
    UserPassButton()
}
