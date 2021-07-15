//
//  SnackSlot.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
import UIKit

class SnackSlot{
   public var itemNumber : Int = 0
    public var itemPrice : Double = 0.0
    
    public func getitemPrice ( itemNumber:Int) -> Double{
        return itemPrice
    }
    public func setitemPrice ( itemNumber:Int,Price:Double) {
        itemPrice = Price
    }
    
}
