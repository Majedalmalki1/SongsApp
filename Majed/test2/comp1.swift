//
//  comp1.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI

struct chart: Identifiable {
    var id: UUID = UUID()
    var day: String
    var hours: Double
    
}

var day1 = chart(day: "06/14", hours: 8)

var day2 = chart(day: "06/15", hours: 8.5)

var day3 = chart(day: "06/16", hours: 6)

var day4 = chart(day: "06/17", hours: 9.5)

var allhours: [chart] = [
day1,
day2,
day3,
day4]



struct comp1: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 350,height: 250)
            .foregroundColor(.orange)
            .overlay {
                VStack{
                    Text("This week")
                        .padding(.trailing,230)
                    HStack{
                        Text("18")
                            .font(.title)

                        Text("TOTAL WORK\nHOURS")
                        
                        Text("10")
                            .font(.title)
                        Text("TASKS\nCOMPLETED")
                    }.padding()
                    
                    HStack{
                        
                        
                        ForEach(allhours, id: \.id ) {i in
                            
                        
                            
                        }
                        
                        
                        
                    }
                }
            }
    }
}

#Preview {
    comp1()
}
