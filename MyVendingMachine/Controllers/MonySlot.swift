//
//  MonySlot.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
import UIKit

class MonySlot{
    static let shared2 = MonySlot()
   private var Balance : Double = 0.0
   public var isValidated : Bool = false
      
    
    public func setBalance ( Money:Double){
        Balance = Money
        MyVendingMachine.shared.setTotalBalance(balance: Balance)
    }
    
    public func getBalance () -> Double{
       return Balance
    }
    
    public func Validate (Money:String) -> Bool{/* i will take the money from the user as
         a string value
        */
        return true
    }
}
