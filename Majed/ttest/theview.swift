//
//  2view.swift
//  Majed
//
//  Created by 10M on 18/07/1445 AH.
//

import SwiftUI

struct theview: View {
    var body: some View {
        VStack{
            Image(.image)
                .padding(.bottom,50)
                .opacity(0.8)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        VStack{
            Text("ask for investment")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(.bottom,50)
                .foregroundColor(.orange)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        VStack{
            Text("""
                 Schedule a Meeting with our Expert investors
                 """)
                .multilineTextAlignment(.center)
                .padding()
                .shadow(radius: 5)
                .font(.system(size: 25))
                .foregroundColor(.orange)
                .colorMultiply(.white)
        }
        VStack{
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/,
                       label: { Text("Date and time :")
                .bold()})
        } .padding()
        VStack{
            Button("Call") {
            }
            .frame(width: 320,height: 50)
            .background(.orange)
            .foregroundColor(.white)
            .shadow(radius: 10)
            
            .cornerRadius(8)
        }
        .padding(.top,100)

        
    }
}

#Preview {
    theview()
}
