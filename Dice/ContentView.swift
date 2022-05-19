//
//  ContentView.swift
//  Dice
//
//  Created by Pablo Moreno Um on 26.02.22.
//

import SwiftUI

struct ContentView: View {
    @State var diceNumber = Int.random(in: 1...6)
    
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image("dice-\(diceNumber)")
            Text("YOU ROLLED A \(diceNumber)")
                .padding()
        }.onTapGesture {
            diceNumber = Int.random(in: 1...6)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
