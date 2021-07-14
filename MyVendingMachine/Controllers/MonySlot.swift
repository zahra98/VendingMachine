//
//  MonySlot.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
import UIKit

class MonySlot{
   private var Balance : Double = 0.0
   public var isValidated : Bool = false
      
    
    public func setBalance ( Money:Double){
        Balance = Money
    }
    
    public func getBalance () -> Double{
       return Balance
    }
    
    public func Validate () -> Bool{
        return true
    }
}
