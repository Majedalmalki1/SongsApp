//
//  ContentView.swift
//  calcu
//
//  Created by 10M on 20/07/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State var firstinput = ""
    @State var secondinput = ""
    @State var res = 0
    
    @ObservedObject var mv = SumLogic()
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea().opacity(0.5)
            VStack {
                Text("Result is \(res)")
                    .font(.largeTitle)
                TextField("", text: $firstinput)
                TextField("", text: $secondinput)
                Button("Sum it"){
                        
                    
                }.font(.title)

            } .textFieldStyle(.roundedBorder)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
