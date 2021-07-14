//
//  Cards.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
class Cards:MonySlot{
    static let shared = Cards()
    var check:Bool = true
     func Validate(cardNumber :String) -> Bool {
        if(cardNumber == "1234"){//check if the card is valid or not
        //add the value to the balance
            check=true
        }
 

        else{
            Exeptions.shared.notvalid()
            check=false
        }
        return check
    }
}
