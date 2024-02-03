//
//  SwiftUIView.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI
struct SwiftUIView: View {
    var name: String = "Hello there"
    var body: some View {
        VStack{
            ForEach((0...name.count),id : \.self){_ in
                
                HStack{
                    out()
                }
                
            }
        }
    }
}
    
    #Preview {
        SwiftUIView()
    }

