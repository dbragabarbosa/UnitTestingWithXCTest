//
//  AccountBalance.swift
//  TestsProject
//
//  Created by Daniel Braga Barbosa on 27/06/24.
//

import UIKit

struct AccountBalance 
{
    
    let balance: Double

    func getSpecialLimit() -> Double 
    {
        if balance < 100 {
            return balance + 10
        } else if balance > 500 {
            return balance + 1000
        }
        
        return balance
    }
}
