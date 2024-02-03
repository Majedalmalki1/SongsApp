//
//  out.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI

struct out: View {
    var body: some View {
        VStack{
            
                ScrollView(.horizontal){
                    HStack{
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 100,height: 35)
                        .foregroundColor(.blue)
                        .overlay {
                            Text("✅ ALL")
                                .foregroundColor(.white)
                                .bold()
                        }
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 100,height: 35)
                        .foregroundColor(.blue)
                        .overlay {
                            Text("✅ ALL")
                                .foregroundColor(.white)
                                .bold()
                        }
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 100,height: 35)
                        .foregroundColor(.blue)
                        .overlay {
                            Text("✅ ALL")
                                .foregroundColor(.white)
                                .bold()
                        }
                    
                    
                }
                } //end of buttns
            } .padding()
            
        }
    }

#Preview {
    out()
}
