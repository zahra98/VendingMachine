//
//  MyVendingMachine.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import Foundation
import UIKit

class MyVendingMachine:NSObject{
    static let shared = MyVendingMachine()
    let prices = [1, 3, 5, 2,3, 4, 3, 5,4,2,1, 3, 5, 2,3, 4, 3, 5,4,2,1,0.5,1,1,1]
    private var totalBalance : Double=0.0
    private var totalPrice : Double=0.0
    private var Change : Double = 0.0
    private var chosenItem : Int = 0
    var testBalance : Bool = true
    public func setChosenItem (Number:Int){
        chosenItem = Number
    }
    public func getChosenItem ()-> Int{
        return chosenItem
    }
    
    
    public func setTotalBalance (balance:Double){
        if(balance>0){
        totalBalance = balance
        }
        else{
            testBalance = false
            print("invaled Balance")
        }
    }
    public func getTotalBalance ()-> Double{
        return totalBalance
    }
    
    public func getitemPrice(item:Int)->Double{
        if(item > 0 && item <= 25){
        return prices[item+1]
        }
        else{
            Exeptions.shared.notValidSnack()
            return 0.0
        }
    }
    

    
    public func calculateChange (Balance:Double,Price:Double){
        let deffirence : Double  = Balance - Price
        if(deffirence == 0){
            //no change
            Exeptions.shared.noChange()
        }
        else if(deffirence > 0){
            // change is deff
         
            setChange(change: deffirence)
        }
        else {
            //not enough Money exception
            Exeptions.shared.notEnoughMoney()
        }
    }
    
    public func setChange (change:Double){
       Change = change
    }
    public func getChange ()-> Double{
        return Change
    }
    
    
    
}
