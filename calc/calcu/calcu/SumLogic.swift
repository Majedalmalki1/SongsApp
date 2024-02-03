//
//  SumLogic.swift
//  calcu
//
//  Created by 10M on 20/07/1445 AH.
//

import SwiftUI

class SumLogic: ObservableObject{
    
    @Published var res = 0
    var num1 = 0
    var num2 = 0
    
    func calculate(num1: String , num2: String) -> Int{
        
        res = Int(num1)! + Int(num2)!
        return res
    }
}
