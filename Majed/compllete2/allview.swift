//
//  allview.swift
//  Majed
//
//  Created by 10M on 19/07/1445 AH.
//

import SwiftUI

struct allview: View {
    var body: some View {
        ScrollView(){
            head()
            Featured()
            BodyView()
        }
    }
}

#Preview {
    allview()
}
