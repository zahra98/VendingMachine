//
//  Keypad.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
import UIKit

class Keypad{
    static let shared = Keypad()
   private var myNumber : Int = 0
    
    public func setNumber ( itemNumber:Int){
      myNumber = itemNumber
        MyVendingMachine.shared.setChosenItem(Number: myNumber)
        print("\(MyVendingMachine.shared.getChosenItem())")
        
    }
    public func getNumber () -> Int{
     return myNumber
    }
    
}
