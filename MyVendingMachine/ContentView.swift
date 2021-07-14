//
//  ContentView.swift
//  MyVendingMachine
//
//  Created by mac on 14/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State var CoinMoney: String=" "
    @State var NoteMoney: String=" "
    @State var CardMoney: String=" "
    @State var Snack_number: String=" "
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
                Text("Snack").padding()
                TextField("Snack", text: $Snack_number)
               
            }
            
            
            HStack{
                Text("Coins").padding()
                
                TextField("Money", text: $CoinMoney)

            }
            
            HStack{
                Text("Notes").padding()
                
                TextField("Money", text: $NoteMoney)

            }
            HStack{
                Text("Card").padding()
                
                TextField("Money", text: $CardMoney)

            }
        
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
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
