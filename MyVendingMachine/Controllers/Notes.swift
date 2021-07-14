//
//  Notes.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
class Notes:MonySlot{
    static let shared = Notes()
    var check:Bool = true
    override func Validate(Money:String) -> Bool {
        if(Money == "20$"){
            super.setBalance(Money: super.getBalance()+20)
            check=true
        }
        else if(Money == "50$"){
            super.setBalance(Money: super.getBalance()+50)
            check=true
        }

        else{
            Exeptions.shared.notvalid()
            check=false
        }
        return check
    }
}
