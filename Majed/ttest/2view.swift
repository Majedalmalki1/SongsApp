//
//  2view.swift
//  Majed
//
//  Created by 10M on 18/07/1445 AH.
//

import SwiftUI

struct secondview: View {
    var body: some View {
        VStack{
            Image(.image1)
                .padding(.bottom,50)
        }
        VStack{
            Text("technical support")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding(.bottom,50)
                .foregroundColor(.orange)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        VStack{
         Text("Our technical support is 24/7 Live you can contact us at any time you want ")
                .multilineTextAlignment(.center)
                .padding()
                .shadow(radius: 5)
        }
        VStack{
            Button("Call") {
            }
            .frame(width: 320,height: 50)
            .background(.orange)
            .foregroundColor(.white)
            .shadow(radius: 10)
            
            .cornerRadius(8)
        }
        .padding(.top,200)

        
    }
}

#Preview {
    secondview()
}
