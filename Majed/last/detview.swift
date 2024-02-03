//
//  detview.swift
//  Majed
//
//  Created by 10M on 20/07/1445 AH.
//

import SwiftUI

struct detview: View {
    var body: some View {
        VStack{
            ZStack(alignment: .topLeading){
                
                Circle()
                    .fill(Color.red)
                    .overlay {
                        Text("DON'T PRESS ME !!!!")
                            .bold()
                            .font(.largeTitle)
                    }
                Button{}label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.black)
                } 
                
            }
        }
    }
}

#Preview {
    detview()
}
