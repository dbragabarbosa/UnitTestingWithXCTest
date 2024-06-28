//
//  AccountBalance.swift
//  Curso
//
//  Created by Bruno Faganello Neto on 13/06/20.
//  Copyright © 2020 Bruno Faganello. All rights reserved.
//

import UIKit

struct AccountBalance {
    
    let balance: Double

    func getSpecialLimit() -> Double {
        if balance < 100 {
            return balance + 10
        } else if balance > 500 {
            return balance + 1000
        }
        
        return balance
    }
}
