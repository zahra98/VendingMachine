//
//  Exeptions.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
class Exeptions{
    static let shared = Exeptions()
    
    public func notEnoughMoney(){
        print("Not Enough Money")
    }
    public func notvalid(){
        print("This is not valid Money")
    }
    public func soldOut(){
        print("This item is sold Out")
    }
    public func noChange(){
        print("No Change")
    }
    
}
