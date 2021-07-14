//
//  MyVendingMachine.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
import UIKit

class MyVendingMachine:NSObject{
    
    var myMoneySlot :MonySlot?
    var mySnackSlot:SnackSlot?
    var myKeypad:Keypad?
    private var totalBalance : Double?
    private var totalPrice : Double?
    private var Change : Double?
    private var chosenItem : Int?
    
    public func setChosenItem (){
        chosenItem = myKeypad?.getNumber()
    }
    public func getChosenItem ()-> Int{
        return chosenItem!
    }
    
    public func setTotalBalance (){
        totalBalance = myMoneySlot?.getBalance()
    }
    public func getTotalBalance ()-> Double{
        return totalBalance!
    }
    
    public func setTotalPrice (){
        totalPrice = mySnackSlot?.getitemPrice(itemNumber: getChosenItem())
    }
    public func getTotalPrice ()-> Double{
        return totalPrice!
    }
    
    public func setChange (){
       let inputMoney:Double = getTotalBalance()
       let price : Double = getTotalPrice()
        let deffirence : Double  = inputMoney - price
        if(deffirence == 0){
            //no change
        }
        else if(deffirence > 0){
            // change is deff
            Change = deffirence
        }
        else {
            //not enough Money exception
        }
    }
    public func getChange ()-> Double{
        return Change!
    }
    
}
