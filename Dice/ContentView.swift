//
//  ContentView.swift
//  Dice
//
//  Created by Pablo Moreno Um on 26.02.22.
//

import SwiftUI
import AVFoundation
var audioPlayer: AVAudioPlayer?

struct ContentView: View {
    @State var diceNumber = Int.random(in: 1...6)
    
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image("dice-\(diceNumber)")
            Text("YOU ROLLED A \(diceNumber)")
                .padding()
        }.onTapGesture {
            diceNumber = Int.random(in: 1...6)

            playSound(number: Int32(diceNumber))
        }.onAppear {
            playSound(number: Int32(diceNumber))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func playSound(number: Int32) {
    let numberString = String(number)
    let filename = numberString + ".mp3"
    let path = Bundle.main.path(forResource: filename, ofType: nil)
    if (path != nil) {
        let url = URL(fileURLWithPath: path!)

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            guard let player = audioPlayer else { return }

            player.prepareToPlay()
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    else {
        print("File '" + filename + "' not found")
    }
}
