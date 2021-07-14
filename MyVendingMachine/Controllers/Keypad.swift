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
        if(itemNumber > 0 && itemNumber <= 25){
      myNumber = itemNumber
        MyVendingMachine.shared.setChosenItem(Number: myNumber)
        }
        else{
            Exeptions.shared.notValidSnack()
        }
        
    }
    public func getNumber () -> Int{
     return myNumber
    }
    
}
