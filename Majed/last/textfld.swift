//
//  textfld.swift
//  Majed
//
//  Created by 10M on 20/07/1445 AH.
//

import SwiftUI

struct textfld: View {
    
    @State var city = ""
    @State var city2 = ""
    @State var togg = true
    
    @State var dont = false
    var body: some View {
        VStack{
            Toggle(isOn: $togg) {
                
            }

            Spacer()
            HStack{
                VStack{
                    Text(city)
                    
                    
                    TextField("اكتب هنا ", text: $city2)
                } .foregroundColor(.black)
                    .font(.title)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            Button("DON'T PRESS ME !"){
                
            } .foregroundColor(.red)
            Spacer()
            
            if togg == true{
                Button("Show city"){
                    city = city2
                    city2 = ""
                }
            }
            else{ }
            
            
            
        
        }
        
        .padding()
    }
}

#Preview {
    textfld()
}
