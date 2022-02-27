//
//  ContentView.swift
//  Dice
//
//  Created by Pablo Moreno Um on 26.02.22.
//

import SwiftUI

struct ContentView: View {
    let diceNumber = Int.random(in: 1...6)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Image("dice-\(diceNumber)")
            Text("You rolled a \(diceNumber)")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
