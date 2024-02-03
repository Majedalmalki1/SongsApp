//
//  viewList.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI


struct brand: Identifiable {
    var id: UUID = UUID()
    var image: String
    var title: String
    var subtitle: String?
}

var brand1 = brand(image: "dollarsign.square.fill", title: "My Balance ", subtitle: "$ 1.560")

var brand2 = brand(image: "medal", title: "Leaderboard", subtitle: "Pos. 12th ")

var brand3 = brand(image: "gear", title: "Settings")

var brand4 = brand(image: "window.shade.closed", title: "Dark Mode")

var brand5 = brand(image: "shield.lefthalf.filled.badge.checkmark", title: "Security & Privacy")

var brand6 = brand(image: "info.circle", title: "About")

var brand7 = brand(image: "rectangle.portrait.and.arrow.right", title: "Logout")

var allbrands: [brand] = [
brand1,
brand2,
brand3,
brand4,
brand5,
brand6,
brand7
]

struct viewList: View {
    var body: some View {
        comp1()
        
        VStack{
            ForEach(allbrands, id: \.id ) {i in
               
                VStack {
                    HStack{
                        
                        Image(systemName: "\(i.image)")
                            .font(.system(size: 40))
                            Text("\(i.title)")
                            .bold()
                            Spacer()
                            Text("\(i.subtitle ?? "")")
                            .opacity(0.5)
                        
                        Button(">") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }.padding()
                            .foregroundColor(.gray)
                            
                        
                    }
                    Rectangle()
                            .frame(height: 1)
                            .opacity(0.3)
                            .padding(.leading , 40)
                }
                
            }
            
        }    }
}

#Preview {
    viewList()
}
