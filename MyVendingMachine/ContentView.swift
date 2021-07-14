//
//  ContentView.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State var CoinMoney: String="0.0"
    @State var NoteMoney: String="0.0"
    @State var CardMoney: String="0.0"
    @State var balance:Double = 0.0
    @State var Change:Double = 0.0
    @State var Snack_number: String="0"
    @State var Snack: Int=0
    @State var price : Double = 0.0
    let data = (1...25).map { "\($0)" }

    let columns = [
        GridItem(.adaptive(minimum: 60))
    ]
    var body: some View {
     
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }
            .padding(.horizontal)
            
            
            
            HStack{
                Text("Coins").padding()
                
                TextField("Money", text: $CoinMoney)
                Button(action: {
                    Coins.shared.Validate(Money: CoinMoney)
                    balance=MyVendingMachine.shared.getTotalBalance()
                }) {
                    Text("Add coins")
                }
            }
            
            HStack{
                Text("Notes").padding()
                
                TextField("Money", text: $NoteMoney)
                Button(action: {
                    Notes.shared.Validate(Money: NoteMoney)
                    balance=MyVendingMachine.shared.getTotalBalance()
                }) {
                    Text("Add notes")
                }
            }
            HStack{
                Text("Card").padding()
                
                TextField("Money", text: $CardMoney)
                Button(action: {
                    Cards.shared.Validate(Money: CardMoney)
                    balance=MyVendingMachine.shared.getTotalBalance()
                }) {
                    Text("Add card")
                }
            }
            
            
            HStack{
          
                Text("Snack").padding()
                TextField("Snack", text: $Snack_number)
                let number = Int(Snack_number) ?? 0
                Button(action: {
                    Keypad.shared.setNumber(itemNumber: number)
                    Snack = MyVendingMachine.shared.getChosenItem()
                    
        
                }) {
                    Text("choose")
                }
            }
            HStack{
                
                Text("Balance:\(balance)")
                
                Text("change:\(Change )").padding()

            }
            Text("Snack:\(Snack)")

            
            Button(action: {
                MyVendingMachine.shared.calculateChange(Balance: balance, Price: MyVendingMachine.shared.getitemPrice(item: Snack))
                Change = MyVendingMachine.shared.getChange()
                
            }) {
                Text("Purchase")
            }
        }
        .frame(maxHeight: 600)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
