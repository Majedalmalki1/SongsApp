//
//  1view.swift
//  Majed
//
//  Created by 10M on 18/07/1445 AH.
//

import SwiftUI

struct firstview: View {
    var body: some View {
        VStack{
            Image(uiImage: .image2)
                .resizable()
            .frame(width: 300,height: 300)}
        VStack{
            Text("job application ")
                .font(.system(size: 30))
                .bold()
            .padding(50)}
        VStack{
            Text("You can send your CV through this link or you can contact us on our Email ")
                .padding()
                .multilineTextAlignment(.center)
        }
        VStack{
                Button("Apply") {
                }
                .frame(width: 320,height: 50)
                .background(.orange)
                .foregroundColor(.white)
                .shadow(radius: 10)
                .cornerRadius(8)
                .padding()

            }
        }
        
    }


#Preview {
    firstview()
}
