//
//  Coins.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
import UIKit

class Coins : MonySlot{
    var check:Bool = true
    static let shared = Coins()
    override func Validate(Money:String) -> Bool {
        if(Money == "10c"){
            super.setBalance(Money: super.getBalance()+0.1)
            check=true
        }
        else if(Money == "20c"){
            super.setBalance(Money: super.getBalance()+0.2)
            check=true
        }
        else if(Money == "50c"){
            super.setBalance(Money: super.getBalance()+0.5)
            check=true
        }
        else if(Money == "1$"){
            super.setBalance(Money: super.getBalance()+1)//all calculation will be based on dollars not cents
            check=true
        }
        else{
            check=false
            Exeptions.shared.notvalid()
        }
        return check
    }
    
    
}
